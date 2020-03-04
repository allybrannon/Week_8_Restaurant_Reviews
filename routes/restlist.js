const express = require("express");
const router = express.Router();
const restaurantModel = require("../models/restaurantModel");

router.get("/:id?", async (req, res, next) => {
  const id = req.params.id;
  const data = await restaurantModel.getById(id);
  res.render("template", {
    locals: {
      title: data[0].name,
      data: data
    },
    partials: {
      partial: "partial-rest"
    }
  });
});

module.exports = router;
