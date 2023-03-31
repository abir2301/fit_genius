const userHp = (sequelize, Sequelize) => {
  const UserHp = sequelize.define(
    "userHp",
    {},
    {
      timestamps: true,
      freezeTableName: true,
    }
  );

  return UserHp;
};
module.exports = userHp;
