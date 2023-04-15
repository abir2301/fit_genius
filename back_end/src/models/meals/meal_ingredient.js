const meal_ingr = (sequelize, Sequelize) => {
    const MI = sequelize.define(
      "meal_ingredient",
      {
        quantity: {
          type: Sequelize.FLOAT,
          allowNull: false,
        },
      },
      {
        timestamps: true,
        freezeTableName: true,
      }
    );
  
    
    return MI;
  };
  module.exports = meal_ingr;
  