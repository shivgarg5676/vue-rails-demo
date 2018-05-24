express = require('express');
router = express.Router();
pageController = require('./controllers/page_controller')

router.get('/pages', pageController.index);

module.exports =  router;