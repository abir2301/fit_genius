  const user = require("../controllers/user.controller");
  var router = require("express").Router();
  const auth = require('./verifyjwttoken')
  router.get("/registration", user.registration
  );
  router.get("/info",auth, user.getUserById);
  router.get("/login", user.userLogin);
  router.get("/update", auth, user.update);
  router.get("/destroy", auth, user.destroy);
  router.get("/", user.getUsers);
module.exports = router;
