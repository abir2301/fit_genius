const workoutPlan = (sequelize, Sequelize) => {
    const WP = sequelize.define(
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
  
    
    return WP;
  };
  module.exports = workoutPlan;
  