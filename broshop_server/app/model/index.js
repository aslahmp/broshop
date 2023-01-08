const Sequelize = require("sequelize");
const sequelize = new Sequelize({
    host: "localhost",
    port: 5432,
    database: "postgres",
    dialect: "postgres",
    username: "postgres",
    password: "example",
  
  
  });
  const db = {};
  db.Sequelize = Sequelize;
db.sequelize = sequelize;
db.user = require("./user.model")(sequelize, Sequelize);
module.exports = db;