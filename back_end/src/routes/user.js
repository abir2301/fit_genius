  const user = require("../controllers/user.controller");
  var router = require("express").Router();
  const auth = require('./verifyjwttoken')
  router.get("/registration", user.registration
  );
  router.get("/info",auth, user.getUserById);
  router.get("/login", user.userLogin);
  router.get("/update", auth, user.update);
  router.get("/delete", auth, user.delete);
   
module.exports = router;
