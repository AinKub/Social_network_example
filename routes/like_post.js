var express = require('express');
const { User, Post, Photo, PostLike} = require('../public/javascripts/models/init')
const { Sequelize } = require('sequelize')
var router = express.Router();

/* GET home page. */
router.post('/', async function(req, res, next) {

  PostLike.create(
    {
        userId: req.query.userId,
        postId: req.query.postId
    }
  )
  
  res.sendStatus(200)

});

module.exports = router;
