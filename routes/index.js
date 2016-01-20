var models = require('../models');
var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function (req, res, next) {
    res.render('index', { title: "Express" });
});

/* GET MC page. */
router.get('/mc', function (req, res) {
    models.MC.findAll({ }).then(function (docs) {
        res.render('mc', {
            title: 'Multiple Choices',
            mcs: docs
        });
    });
});

module.exports = router;