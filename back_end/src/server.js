const express = require("express");
const dbConnection = require("./config/connection");
require("dotenv").config();
const users = require("./routes/user");
const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.json());
dbConnection.connect();
app.get("/", (req, res) => {
  res.send("heyy appiii ");
});
app.use("/api/users", users);

const port = process.env.PORT ? process.env.PORT : 3000;

app.listen(port, () => {
  console.log("app run on port ", port);
});
