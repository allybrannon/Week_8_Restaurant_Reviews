const express = require("express");
const router = express.Router();
const restaurantModel = require("../models/restaurantModel");

/* GET home page. */
router.get("/:id?", async (req, res) => {
  const data = await restaurantModel.getAllRestaurants();

  res.render("template", {
    locals: {
      title: "Express",
      data: data
    },
    partials: {
      partial: "partial-index"
    }
  });
});

module.exports = router;
