const { DataTypes } = require('sequelize');
module.exports = (sequelize, Sequelize) => {
    const Admin = sequelize.define('admin', {
        email: {
            type: DataTypes.STRING,

            allowNull: false,
            primaryKey: true
        }, password: {
            type: DataTypes.STRING,
            allowNull: false,
        },
    },
    {
        timestamps: false,
    }
    
    );
    return Admin;
};