
const program =(sequelize, Sequelize) =>{
    const Program = sequelize.define(
      "program",
      {
        objectif : {
          type: Sequelize.STRING,
          allowNull: true,
          validate: {
            isIn: {
              args: [["lose_weight", "gain_weight", "build_muscle"]],
              msg: "please verify objectif  ",
            },
          },
        },
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
        return Program;
   }
   module.exports = program;