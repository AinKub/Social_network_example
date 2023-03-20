const sequelize = require('../connection');
const { DataTypes } = require('sequelize')


const User = sequelize.define('User', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    email: {
        type: DataTypes.STRING,
        allowNull: false
    },
    password: {
        type: DataTypes.STRING,
        allowNull: false
    },
    first_name: {
        type: DataTypes.STRING(length=100),
        allowNull: false
    },
    last_name: {
        type: DataTypes.STRING(length=100),
        allowNull: false
    },
    birthday: {
        type: DataTypes.DATE,
        allowNull: true
    },
    country: {
        type: DataTypes.STRING(length=100),
        allowNull: true
    },
    city: {
        type: DataTypes.STRING(length=100),
        allowNull: true
    },
    gender: {
        type: DataTypes.ENUM('male', 'female'),
        allowNull: true
    },
    balance: {
        type: DataTypes.FLOAT,
        allowNull: false,
        defaultValue: 0
    }
},
{
    tableName: 'Users',
    createdAt: false,
    updatedAt: false
}
)

module.exports = User