var express = require('express');
const { User, Post, Photo, PostLike } = require('../public/javascripts/models/init')
const { Sequelize } = require('sequelize')
var router = express.Router();

/* GET post home page. */
router.get('/:postId/:userId', async function(req, res, next) {

    var postId = req.params.postId;
    var userId = req.params.userId;

    const post = await Post.findOne({
      attributes: {
        include: [
          [
            Sequelize.literal('(SELECT `PostLikes`.`id` FROM `PostLikes`  WHERE `PostLikes`.`userID` = 8 AND `Post`.`id` = `PostLikes`.`postId`)'),
            'PostLike'
          ]
        ],
      },
      where: {
        id: postId
      }
    })

    const user = await User.findOne({
        include: Photo,
        where: {
          id: userId
        } 
      });

    console.log(JSON.parse(JSON.stringify(post)))
    res.render('post', { post: post, user: user});

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
