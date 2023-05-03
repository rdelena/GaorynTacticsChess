const express = require("express");
const commentsController = require("../controllers/comments");
const router = express.Router();

router.get("/", commentsController.getAllComments);

module.exports = router;
