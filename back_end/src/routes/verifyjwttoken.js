const jwt = require("jsonwebtoken");
module.exports = (req, res, next) =>{
  const token = req.header("x-auth-token");
  if (!token) {
    return res.status(401).send("access denied ");
  }
  try {
    const decodeToken = jwt.verify(token, "privateKey");
    req.user = decodeToken.UserId;
    next();
  } catch (e) {
    return res.status(400).send("wrong token ");
  }
};
