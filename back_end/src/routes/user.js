const user = require("../controllers/user.controller");
var router = require("express").Router();
const auth = require("./verifyjwttoken");
router.get("/registration", user.registration);
router.get("/info", auth, user.getUserById);
router.post("/login", user.userLogin);
router.get("/update", auth, user.update);
router.get("/destroy", auth, user.destroy);
router.get("/hp", auth, user.getAllHp);
// router.get("/hp/get/:id", auth, user.existHp);
// router.get("/hp/add/:id", auth, user.addHp);

// router.get("/", user.getUsers);
module.exports = router;
