const sequelize = require('../connection');
const { DataTypes } = require('sequelize')


const PostLike = sequelize.define('PostLike', {
    id: {
        type: DataTypes.INTEGER,
        primaryKey: true,
        autoIncrement: true
    },
    userId: {
        type: DataTypes.INTEGER,
        allowNull: true
    },
    postId: {
        type: DataTypes.INTEGER,
        allowNull: false
    }
},
{
    tableName: 'PostLikes',
    createdAt: false,
    updatedAt: false
}
)

module.exports = PostLike