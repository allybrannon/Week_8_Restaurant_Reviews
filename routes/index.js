const express = require("express");
const router = express.Router();
const restaurantModel = require("../models/restaurantModel");

/* GET home page. */
router.get("/", async (req, res, next) => {
  const data = await restaurantModel.getAllRestaurants();

  res.render("template", {
    locals: {
      title: "Restaurants",
      data: data
    },
    partials: {
      partial: "partial-index"
    }
  });
});

router.post("/", function(req, res) {
  console.log("REQ BODY: ", req.body);
  res.sendStatus(200);
});

module.exports = router;
