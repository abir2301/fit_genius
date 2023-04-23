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
  .sync({ alter : true })
  .then(console.log("  successfully created tables  "))
  .catch(function (err) {
    console.log("Server failed to start due to error: %s", err);
  });

db.users = require("./user.js")(connection, Sequelize);
db.profile = require("./profile")(connection, Sequelize);
db.hp = require("./health_problems")(connection, Sequelize);
db.userHp = require("./user_health_problem")(connection, Sequelize);

//workout related models 
db.exercise = require("./workout/exercise")(connection, Sequelize)
db.workoutPlan = require("./workout/workout_plan")(connection, Sequelize)
db.workoutExercises = require("./workout/workout_exercises")(connection, Sequelize)

//diet related models 
db.ingredient = require("./meals/ingredient.js")(connection, Sequelize)
db.meal = require("./meals/meal.js")(connection, Sequelize)
db.mealIngredient = require("./meals/meal_ingredient.js")(connection, Sequelize)
db.dietMeals = require('./meals/diet_meals.js')(connection, Sequelize)
db.dietMeals = require('./meals/diet_meals.js')(connection, Sequelize)
db.dietPlan = require('./meals/diet_plan.js')(connection, Sequelize)


//program related models
db.program = require('./program.js')(connection, Sequelize)
db.programResult = require('./program_result.js')(connection, Sequelize)


db.users.hasOne(db.profile, { onDelete: "CASCADE" });
db.profile.belongsTo(db.users, { onDelete: "CASCADE" });
db.users.belongsToMany(db.hp, { through: db.userHp });
db.hp.belongsToMany(db.users, { through: db.userHp });


db.exercise.belongsToMany(db.workoutPlan , {through : db.workoutExercises})
db.workoutPlan.belongsToMany(db.exercise , {through : db.workoutExercises})


db.ingredient.belongsToMany(db.meal , {through : db.mealIngredient})
db.meal.belongsToMany(db.ingredient , {through : db.mealIngredient})

db.dietPlan.belongsToMany(db.meal , {through : db.dietMeals})
db.meal.belongsToMany(db.dietPlan , {through : db.dietMeals})


db.dietPlan.hasMany(db.program, { onDelete: "CASCADE" })
db.program.belongsTo(db.dietPlan ,  { onDelete: "CASCADE" })

db.workoutPlan.hasMany(db.program, { onDelete: "CASCADE" })
db.program.belongsTo(db.workoutPlan ,  { onDelete: "CASCADE" })



db.program.hasOne(db.programResult , { onDelete: "CASCADE" } )
db.programResult.belongsTo(db.program ,  { onDelete: "CASCADE" })

db.users.hasOne(db.programResult ,  { onDelete: "CASCADE" })
db.programResult.belongsTo(db.users ,  { onDelete: "CASCADE" })

module.exports = db;
