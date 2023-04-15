const exercise = (sequelize, Sequelize) => {
  const Exercise = sequelize.define(
    "exercise",
    {
      name: {
        type: Sequelize.STRING,
        allowNull: false,
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

  
  return Exercise;
};
module.exports = exercise;
