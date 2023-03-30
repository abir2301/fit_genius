const profile = (sequelize, Sequelize) => {
  const Profile = sequelize.define(
    "profile",
    {
      age: {
        type: Sequelize.INTEGER,
        allowNull: true,
        validate :{
          isNumeric :{
            msg : "age must be a number type "
          }
        }
       
      },
      gender: {
        type: Sequelize.STRING,
        allowNull: true,
        validate: {
          isIn: {
            args: [["female", "male"]],
            msg: "gender  value must be female or male ",
          },
        },
      },
      weight: {
        type: Sequelize.FLOAT,
        allowNull: true,
        isNumeric: true,
      },
      height: {
        type: Sequelize.FLOAT,
        allowNull: true,
        isNumeric: true,
      },
      diet_type: {
        type: Sequelize.TEXT,
        allowNull: true,
        validate: {
          isIn: {
            msg: " please verify goal input value ",
            args: ["normal", "vegan", "vegitarian"],
          },
        },
      },
      activity_level: {
        type: Sequelize.TEXT,
        allowNull: true,
        validate: {
          isIn: {
            msg: " please verify activity level  input value ",
            args: ["active", "light active", "very active"],
          },
        },
      },
      goal: {
        type: Sequelize.TEXT,
        allowNull: true,
          validate: {
            isIn: {
              msg: " please verify goal input value ",
              args: ["lose weight", "maintain weight", "gain weight"],
            }
        },
      },
    },
    {
      timestamps: true,
      freezeTableName: true,
    }
  );

  return Profile;
};
module.exports = profile;
