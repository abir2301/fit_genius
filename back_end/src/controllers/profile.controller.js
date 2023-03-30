const { query } = require('express');
const Sequelize = require('sequelize');
const { profile } = require('../models/');
const db = require('../models/')
const User =db.users
const Profile = db.profile ;
exports.create = async (req, res)=>{

const profile = req.body ; 


const user = await User.findOne({where :{
 id : req.user
}})
   const  query = await Profile.findOne({where :{userId: req.user}})
 if (!query){
 
   Profile.create(profile).then( (data1) =>{
    res.send(data1)
  user.setProfile(data1).then((data)=>{
   console.log(data1)
    res
      .status(200)
      .json({ data : data , message: "profile create successfully " });
  })

   }).catch((err) => {
        if (err.name === "SequelizeValidationError") {
          const errors = err.errors.map((e) => ({
            field: e.path,
            message: e.message,
          }));
          res.status(400).json({ errors });
        } else {
          if (err.name === "SequelizeUniqueConstraintError") {
            const errors = err.errors.map((e) => ({
              field: e.path,
              message: e.message,
            }));
            res.status(400).json({ errors });
          } else {
            res.status(500).json({ message: "server error " });
          }
        }
      });
     }
 else {
 
  // profile.userId = req.id 
  // query = profile.json 
  query.age = profile.age ? profile.age : query.age 
  query .gender = profile.gender ? profile.gender : query.gender
  query.height = profile.height ? profile.height : query.height;
  query.weight = profile.weight ? profile.weight : query.weight;
  query.diet_type = profile.diet_type ? profile.diet_type : query.diet_type;
  query.activity_level = profile.activity_level ? profile.activity_level : query.activity_level;
  query.goal = profile.goal ? profile.goal : query.goal;
  
  query.save().then(( data)=> {
   res.send({ data: query, message: "update profile " });
  }).catch ((err)=>{

   if (err.name === "SequelizeValidationError") {
     const errors = err.errors.map((e) => ({
       field: e.path,
       message: e.message,
     }));
     res.status(400).json({ errors });
   } else {
     if (err.name === "SequelizeUniqueConstraintError") {
       const errors = err.errors.map((e) => ({
         field: e.path,
         message: e.message,
       }));
       res.status(400).json({ errors });
     } else {
       res.status(500).json({ message: "server error " });
     }
   }
  })
 
 }
 

 



};

exports.delete = async (req, res) => {
 const profile = await Profile.findOne({
   where: {
     userId: req.user,
   },
 })
   .then((data) => {
     if (!data) {
       res.status(400).send({ message: " user does not have a profile " });
     }
     Profile.destroy({
      where :{
       userId :req.user
      }
     }).then((data)=>{
      res.status(200).send({message :"profile deleted successfully "})

     }).catch((error)=>{
      res.status(500).send("server error "+error.message)
     })
   })
   .catch((error) => {
     res.status(404).send({ error: error.message });
   });
 if (!profile) {
 }
};
exports.getProfile = async (req, res) => {
const profile = await Profile.findOne({where :{
 userId :req.user 
}}).then((data)=>{
 if (!data){
res.status(400).send({ message: " user profile does not exist " });
 }
 res.status(200).send({data: data , message :"profile"})
}).catch((error)=>{
 res.status(404).send({error : error.message})

})
if (!profile){
 
}
};

