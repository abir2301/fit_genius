  const user = require("../controllers/user.controller");
  var router = require("express").Router();
  const auth = require('./verifyjwttoken')
  router.get("/registration", user.registration
  );
  router.get("/info/:id",auth, user.getUserById);
  router.get("/login", auth, user.userLogin);
   
module.exports = router;
