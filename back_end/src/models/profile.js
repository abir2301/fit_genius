const profile = (sequelize, Sequelize) => {
  const Profile = sequelize.define(
    "profile",
    {
      age: {
        type: Sequelize.INTEGER,
        allowNull: true,
        isNumeric: true,
      },
      gender: {
        type: Sequelize.STRING,
        allowNull: true,
        validate: {
          isIn: {
            arg: [["female", "male"]],
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
            arg: ["normal", "vegan", "vegitarian"],
          },
        },
      },
      activity_level: {
        type: Sequelize.TEXT,
        allowNull: true,
        validate: {
          isIn: {
            msg: " please verify activity level  input value ",
            arg: ["active", "light active", "very active"],
          },
        },
      },
      goal: {
        type: Sequelize.TEXT,
        allowNull: true,
        validate: {
          isIn: {
            msg: " please verify goal input value ",
            arg: ["lose weight", "maintain weight", "gain weight"],
          }
      },
    }
   },
    {
      timestamps: true,
      freezeTableName: true,
    }
  );

  return Profile;
};
module.exports = profile;
