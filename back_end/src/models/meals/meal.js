const meal = (sequelize, Sequelize) => {
    const Meal = sequelize.define(
      "meal",
      {
        name: {
          type: Sequelize.STRING,
          allowNull: false,
        },
        calories: {
          type: Sequelize.INTEGER,
          allowNull: false,
          validate :{
            isNumeric :{
              msg : "calories must be a number type "
            }
          }
        },
        carbs: {
            type: Sequelize.INTEGER,
            allowNull: false,
            validate :{
              isNumeric :{
                msg : "carbs must be a number type "
              }
            }
          },
        protein: {
            type: Sequelize.INTEGER,
            allowNull: false,
            validate :{
              isNumeric :{
                msg : "protein must be a number type "
              }
            }
          },
        fat: {
            type: Sequelize.INTEGER,
            allowNull: false,
            validate :{
              isNumeric :{
                msg : "fat must be a number type "
              }
            }
          },
      },
      {
        timestamps: true,
        freezeTableName: true,
      }
    );
  
    
    return Meal;
  };
  module.exports = meal;
  