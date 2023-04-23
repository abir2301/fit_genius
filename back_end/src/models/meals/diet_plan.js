const dietPlan = (sequelize, Sequelize) => {
    const DP = sequelize.define(
      "diet_plan",
      {},
      {
        timestamps: true,
        freezeTableName: true,
      }
    );
  
    return DP;
  };
  module.exports = dietPlan;
  