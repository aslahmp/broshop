const { DataTypes } = require('sequelize');
module.exports = (sequelize, Sequelize) => {
    const Product = sequelize.define('product', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: DataTypes.STRING,
            allowNull: false,
        }, strapColor: {
            type: DataTypes.STRING,
            allowNull: false,
        }, highlight: {
            type: DataTypes.STRING,
            allowNull: false,
        }, price: {
            type: DataTypes.DOUBLE,
            allowNull: false,
        }, status: {
            type: DataTypes.BOOLEAN,
            allowNull: false,
        }, image: {
            type: DataTypes.STRING,
            allowNull: false,
            },
    });
    return Product;
};