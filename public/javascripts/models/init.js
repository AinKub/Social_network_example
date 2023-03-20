const User = require('./user')
const Photo = require('./photo')
const Post = require('./post')
const PhotoLike = require('./photo_likes')
const PostLike = require('./post_likes')


User.hasOne(Photo, {onDelete: 'CASCADE'})
User.belongsTo(Photo, {onDelete: 'SET NULL'})

User.hasMany(Post)

Post.hasMany(PostLike, {onDelete: 'CASCADE'})
PostLike.belongsTo(User, {onDelete: 'SET NULL'})

Photo.hasMany(PhotoLike, {onDelete: 'CASCADE'})
PhotoLike.belongsTo(User, {onDelete: 'SET NULL'})


const init = async () => {
    await User.sync({alter: false})
    await Photo.sync({alter: false})
    await Post.sync({alter: false})
    await PhotoLike.sync({alter: false})
    await PostLike.sync({alter: false})
}

module.exports = { init, User, Photo, Post, PhotoLike, PostLike }