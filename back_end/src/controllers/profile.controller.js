const Sequelize = require('sequelize')
const db = require('../models/')
const Profile = db.profile ;
exports.create = async (req, res)=>{
 const profile = req.body ; 
  res.send(profile);
};
exports.update = async (req, res) => {};
exports.delete = async (req, res) => {};
exports.getProfile = async (req, res) => {};

