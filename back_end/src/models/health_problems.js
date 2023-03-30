
const healthProblem =(sequelize, Sequelize) =>{
 const HP = sequelize.define("HP", {
   name: {
     type: Sequelize.STRING,
     validate: {
       allowNull :{
        msg :'health problem name must be not nul '
       }
     },
   },
   type:{
    type: Sequelize.STRING,
        allowNull: true,
        validate: {
          isIn: {
            args: [["allergies", "chronic_diseases","deficiencies"]],
            msg: "please verify hp type  ",
          },
         }
 }},
 {
      timestamps: true,
      freezeTableName: true,
    });
     return HP;
}
module.exports = healthProblem;