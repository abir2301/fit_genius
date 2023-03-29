const profile = require ('../controllers/profile.controller')
var router = require ("express").Router()
const auth = require('./verifyjwttoken')
router.get("/", auth ,profile.getProfile)
router.get("/new", auth, profile.create);
router.get("/update", auth, profile.update);
router.get("/delete", auth, profile.delete);
module.exports = router;