const Sequelize = require("sequelize");
require("dotenv").config();
const connection = new Sequelize(
  process.env.DB_DATABASE,
  process.env.DB_USERNAME,
  process.env.DB_PASSWORD,
  {
    host: process.env.DB_HOST,
    dialect: process.env.DB_CONNECTION,
  }
);
async function connect() {
  await connection
    .sync({ force: true })
    .authenticate()
    .then(() => {
      console.log("connection successfully ");
    })
    .catch((error) => {
      console.log("error while connecting  to db ");
      console.log(error);
    });
}
const db = {};

db.Sequelize = Sequelize;
db.sequelize = connection;
db.sequelize
  .sync({ alter: true })
  .then(
    console.log("  successfully created tables  ")
  )
  .catch(function (err) {
    console.log("Server failed to start due to error: %s", err);
  });

db.users = require("./user.js")(connection, Sequelize);
db.profile = require("./profile")(connection, Sequelize);
db.users.hasOne(db.profile);
// db.userInfo.belongsTo(db.users);


module.exports = db;
