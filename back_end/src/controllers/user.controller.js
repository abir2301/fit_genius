const Sequelize = require("sequelize");
const { connection } = require("../config/connection.js");
const db = require("../models/");
const User = db.users;
const jwt = require("jsonwebtoken");
const emailSending = require("../routes/mailsending");
const { gzipSync, gunzipSync } = require("zlib");

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
        var token = jwt.sign({ id: user.id }, "privateKey", {
          expiresIn: 86400,
        });
        //email send with code
        const codeContent = data.password + "/" + data.email;
        const code = (gzippedBuffer = gzipSync(codeContent).toString("base64"));
        console.log(code);
        res.header("x-auth-token", token).send({ user: data, token: token });
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
  try{

  } catch(error ){}
  
  const id = req.user.id;
 res.send(req.json)
  console.log(id);
  const user = await User.findByPk(req.user.id, {
    attributes: ["id", "fullName", "email"],
  }).catch((err) => {
    console.log("Error: ", err);
  });

  if (user) {
    res.status(200).send({ user: user });
  } else {
    if (!user) {
      res.status(400).send("user   does not exist");
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
  const user = {
    fullName: req.body.fullName,
    email: req.body.email
      };
  const query = await User.update({
    where: {
      id: user.id,
    },
  });
  if (query) {
    res.status(404).send("user already exist ");
  } else {
    const result = await User.create(user)
      .then((data) => {
        var token = jwt.sign({ id: user.id }, "privateKey", {
          expiresIn: 86400,
        });
        //email send with code
        const codeContent = data.password + "/" + data.email;
        const code = (gzippedBuffer = gzipSync(codeContent).toString("base64"));
        console.log(code);
        res.header("x-auth-token", token).send({ user: data, token: token });
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
