const { DataTypes } = require('sequelize');
module.exports = (sequelize, Sequelize) => {
    const User = sequelize.define('user', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
          
        }, name: {
            type: DataTypes.STRING,
            allowNull: false,
        },
        email: {
        type: DataTypes.STRING,
        allowNull: false,
        primaryKey: true
        },
        imageUrl: {
        type: DataTypes.STRING,
        allowNull: false,
        },
    });

    return User;
};