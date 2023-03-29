// const { default: isEmail } = require("validator/lib/isEmail")
const bcrypt = require('bcrypt')
const user = (sequelize, Sequelize) => {
  const User = sequelize.define(
    "users",
    {
      fullName: {
        type: Sequelize.STRING,
        validate: {
          len: {
            args: [4, 20],
            msg: "Username must be between 3 and 255 characters ",
          },
        },
        allowNull: false,
        // get(){
        //   const data = this.getDataValue("fullName");
        //   return data.toUppercase();
        // }
      },
      email: {
        type: Sequelize.STRING,
        allowNull: false,
        unique: true,
       
        validate: {
          notNull: {
            msg: "Please must not be null ",
          },

          isEmail: {
            msg: "please verify email pattern ",
          },
        },
      },
      password: {
        type: Sequelize.STRING,
        allowNull: false,
        set(value){
          const salt = bcrypt.genSaltSync(12);
          const hash = bcrypt.hashSync(value, salt)
          console.log(bcrypt.compare(hash, value));
          this.setDataValue("password", hash );
        },
        get(){

        }
        
      },
    },
    {
      timestamps: true,
      freezeTableName: true,
    }
  );

  User.sync({ alter: true })
    .then(() => {
      console.log("User table created successfully");
    })
    .catch((err) => {
      console.log("Error creating User table", err);
    });
  return User;
};
module.exports = user;
