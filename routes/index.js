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

router.post("/", async function(req, res) {
  const { restaurant_id, review_title, review_text } = req.body;
  const idAsInt = parseInt(restaurant_id);
  const postData = await restaurantModel.addReview(
    idAsInt,
    review_title,
    review_text
  );
  console.log(postData);
  res.sendStatus(200);
});

module.exports = router;
