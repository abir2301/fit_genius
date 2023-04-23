const programResult = (sequelize, Sequelize) => {
  const PR = sequelize.define(
    "program_result",
    {
        date: {
            type : sequelize.DATE , 
            primaryKey: true
        } , 
        objectif : {
            type: Sequelize.STRING,
            allowNull: false,
            validate: {
              isIn: {
                args: [["lose_weight", "gain_weight", "build_muscle"]],
                msg: "please verify objectif  ",
              },
            },
          },
        result : {
            type: Sequelize.BOOLEAN,
            allowNull: true,
          },
        comment : {
            type: Sequelize.TEXT,
            allowNull: true,
          },

    },
    {
      timestamps: true,
      freezeTableName: true,
    }
  );

  
  return PR;
};
module.exports = programResult;
