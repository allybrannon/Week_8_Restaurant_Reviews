const db = require("./conn");

class RestaurantModel {
  constructor(id, name, category, address) {
    this.id = id;
    this.name = name;
    this.category = category;
    this.address = address;
  }
  static async getAllRestaurants() {
    try {
      const response = await db.any(`SELECT * FROM restaurant;`);
      return response;
    } catch (error) {
      console.error("Error: ", error);
      return error;
    }
  }

  static async getById(id) {
    try {
      const response = await db.any(
        `SELECT * FROM restaurant WHERE restaurant.id = ${id};`
      );
      return response;
    } catch (error) {
      console.error("ERROR: ", error);
      return error;
    }
  }
}

module.exports = RestaurantModel;
