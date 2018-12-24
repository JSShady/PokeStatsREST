// index.js - Index route module.

// Initialize express router
let router = require('express').Router();

// Set default API response.
router.get('/', (req, res, next) => {
	res.send('Welcome to the Pokemon Go Api REST')
})

module.exports = router;