const sequelize = require('../connection');
const { DataTypes } = require('sequelize')


const PhotoLike = sequelize.define('PhotoLike', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    }
},
{
    tableName: 'PhotoLikes',
    createdAt: false,
    updatedAt: false
}
)

module.exports = PhotoLike