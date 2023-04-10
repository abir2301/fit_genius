const express = require("express");
const dbConnection = require("./config/connection");
require("dotenv").config();
const users = require("./routes/user");
const profiles = require("./routes/profile.route");
const healthProblem = require("./routes/hp.route");

const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.json());
dbConnection.connect();

app.get("/", (req, res) => {
  res.send("heyy appiii");
});
app.use("/api/users", users);
app.use("/api/profiles", profiles);
app.use("/api/hp", healthProblem);

const port = process.env.PORT ? process.env.PORT : 3000;
const ipAddress = "192.168.1.43";
app.listen(port, ipAddress, () => {
  console.log("app run on port ", port, "address ", ipAddress);
});
