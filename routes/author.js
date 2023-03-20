var express = require('express');
const { User, Post, Photo, PostLike } = require('../public/javascripts/models/init')
const { Sequelize } = require('sequelize')
var router = express.Router();

/* GET author home page. */
router.get('/:id', async function(req, res, next) {

  var userId = req.params.id;
  const user = await User.findOne({
    include: Photo,
    where: {
      id: userId
    } 
  });

  const posts = await Post.findAll({
      attributes: {
        include: [
          [
            Sequelize.literal('(SELECT `PostLikes`.`id` FROM `PostLikes`  WHERE `PostLikes`.`userID` = 8 AND `Post`.`id` = `PostLikes`.`postId`)'),
            'PostLike'
          ]
        ],
      },
      where: {
        userId: userId
      },
      order: [['updated_at', 'DESC']]
  })
  res.render('author', { user: user, posts: posts});

});

router.post('/', async function(req, res, next) {

  PostLike.create(
    {
        userId: req.body.userId,
        postId: req.body.postId
    }
  )
  
  res.sendStatus(200)

});

router.delete('/', async function(req, res, next) {

  PostLike.destroy(
    {
        where: {
            userId: req.body.userId,
            postId: req.body.postId
        }
    }
  )
    
  res.sendStatus(200)

});

module.exports = router;
