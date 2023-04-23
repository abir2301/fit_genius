const workoutPlan = (sequelize, Sequelize) => {
    const WP = sequelize.define(
      "workout_plan",
      {
        description: {
            type: Sequelize.TEXT,
            allowNull: false,
           
            validate: {
              notNull: {
                msg: "Description must not be null ",
              },
            },
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
  