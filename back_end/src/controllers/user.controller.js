const Sequelize = require("sequelize");
const { connection } = require("../config/connection.js");
const db = require("../models/");
const User = db.users;
const Profile = db.profile ;
const jwt = require("jsonwebtoken");
const emailSending = require("../routes/mailsending");
const { gzipSync, gunzipSync } = require("zlib");
const { where } = require("sequelize");

exports.registration = async (req, res) => {
  const user = {
    fullName: req.body.fullName,
    email: req.body.email,
    password: req.body.password,
  };
  const query = await User.findOne({
    where: {
      email: req.body.email,
    },
  });
  if (query) {
    res.status(404).send("user already exist ");
  } else {
    const result = await User.create(user)
      .then((data) => {
        var token = jwt.sign({ UserId: data.id }, "privateKey");
        //email send with code
        const codeContent = data.password + "/" + data.email;
        const code = (gzippedBuffer = gzipSync(codeContent).toString("base64"));

        res
          .header("x-auth-token", token)
          .send({ user: data, token: token, code_login: code });
      })
      .catch((err) => {
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
};
exports.getUserById = async (req, res) => {
  const user = await User.findOne({
    include: {
    model: Profile,
    required: false 
  },
    attributes: ["id", "fullName", "email"],
    where: {
      id: req.user,
    },
  }).catch((err) => {
    console.log("Error: ", err);
  });

  if (user) {
    res.status(200).send({ user: user });
  } else {
    if (!user) {
      res.status(400).send("user does not exist  ");
    } else {
      res.status(500).send({
        description: "can not access user info ",
        message: err.message,
      });
    }
  }
};
exports.userLogin = async (req, res) => {
  const code = req.body.code;

  if (!code) {
    res.send("please enter your code to login ");
  } else {
    const gzippedBuffer = Buffer.from(code, "base64");
    const unzipCode = gunzipSync(gzippedBuffer).toString();

    const email = unzipCode.split("/")[1];

    const query = await User.findOne({
      attributes: ["id", "fullName", "email"],
      where: {
        email: email,
      },
    });
    if (!query) {
      res.status(404).send("use hhhhhr does not exist  ");
    } else {
      var token = jwt.sign({ id: query.id }, "privateKey", {
        expiresIn: 86400,
      });
      //email send with code
      res.header("x-auth-token", token).send({ user: query, token: token });
    }
  }
};
exports.update = async (req, res) => {
  const {fullName , email} = req.body ;
try{
 const user = await User.findOne({where :{id: req.user}})
 if (user){
  user.email = email ? email : user.email;
  user.fullName = fullName ? fullName :user.fullName;
  await user.save();
 return res.status(200).json({message : "user updated " , user : user })
}
else {
 return res.status(404).json({error :  'not found user '})
}}
catch (error){
    return res.status(500).json({ error: error.message });
}


};
exports.destroy = async (req, res) => {
  const query = await User.destroy({
    where: {
      id: req.user,
    },
  });
  if (!query) {
    res.status(404).send(" dont find user  ");
  } else {
    res.status(200).send("user deleted  successfully ");
  }
};
exports.resetPassword = async (req, res) => {
  const user = {
    fullName: req.body.fullName,
    email: req.body.email,
  };
  const query = await User.update({
    where: {
      id: req.user,
    },
  });
  if (!query) {
    res.status(404).send(" dont find user  ");
  } else {
    res.status(200).send("user updated successfully ");
  }
};
exports.getUsers = async(req,res)=>{
  User.findAll({
    attributes :["email" , "fullName"], 
    include: {
      model: Profile,
    },
  }).then((data) => {
    res.status(200).send({data : data })
  });
}
exports.getAllHp = async(req, res)=>{
 const user =  await User.findOne({where :{
  id : req.user
 }})
  if (user){
    user.getHps().then((data)=>{
      res.status(200).send ({data: data })
    }).catch((err)=>{
      res.status(404).send({error :err.message})

    })
  }
  else {
    res.status(400).send({error : "does not find user "})
  }
}