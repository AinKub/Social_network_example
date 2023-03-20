const sequelize = require('../connection');
const { DataTypes } = require('sequelize')


const Photo = sequelize.define('Photo', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    file_name: {
        type: DataTypes.STRING,
        allowNull: false
    }
},
{
    tableName: 'Photos',
    createdAt: false,
    updatedAt: false
}
)

module.exports = Photo