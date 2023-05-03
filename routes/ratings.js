const express = require("express");
const ratingsController = require("../controllers/ratings");
const router = express.Router();

router.get("/", ratingsController.getAllRatings);

module.exports = router;
