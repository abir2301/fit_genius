const express = require("express");
const dbConnection = require("./config/connection");
require("dotenv").config();
const users = require("./routes/user");
const profiles = require("./routes/profile.route");
const healthProblem = require("./routes/hp.route");
const os = require("os");
const app = express();
const bodyParser = require("body-parser");
app.use(bodyParser.json());
dbConnection.connect();

app.get("/", (req, res) => {
  const networkInterfaces = os.networkInterfaces();
  const interfaces = Object.values(networkInterfaces);
  let ipAddress = "";

  interfaces.forEach((interfaceArray) => {
    interfaceArray.forEach((networkInterface) => {
      if (networkInterface.family === "IPv4" && !networkInterface.internal) {
        ipAddress = networkInterface.address;
        console.log(ipAddress);
      }
    });
  });

  res.send("heyy appiii");
});
app.use("/api/users", users);
app.use("/api/profiles", profiles);
app.use("/api/hp", healthProblem);

const port = process.env.PORT ? process.env.PORT : 3000;

const ipAddress = process.env.IP_ADDRESS ? process.env.IP_ADDRESS : "0.0.0.0";

app.listen(port, ipAddress, () => {
  console.log("app run on port ", port, "address ", ipAddress);
});
