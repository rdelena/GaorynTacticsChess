const router = require("express").Router();

const usersRouter = require("./users");
const commentsRouter = require("./comments");
const ratingsRouter = require("./ratings");

router.use("/users", usersRouter);
router.use("/comments", commentsRouter);
router.use("/ratings", ratingsRouter);

module.exports = router;
