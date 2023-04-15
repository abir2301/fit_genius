const dietMeals = (sequelize, Sequelize) => {
    const DM = sequelize.define(
      "workout_plan",
      {
        is_done: {
            type: Sequelize.BOOLEAN	,
            allowNull: false,
          },
      },
      {
        timestamps: true,
        freezeTableName: true,
      }
    );
  
    
    return DM;
  };
  module.exports = dietMeals;
  