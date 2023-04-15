const ingredient = (sequelize, Sequelize) => {
    const Ingredient = sequelize.define(
      "ingredient",
      {
        name: {
          type: Sequelize.STRING,
          allowNull: false,
        },
      },
      {
        timestamps: true,
        freezeTableName: true,
      }
    );
  
    return Ingredient;
  };
  module.exports = ingredient;
  