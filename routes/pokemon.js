// pokemon.js - Pokemon route module.

// Initialize express router
let router = require('express').Router();

// Require controller modules.
const pokemonController = require('../controllers/pokemonController');

// Find al pokemons.
router.get('/', pokemonController.pokemonList)

// Find a specific pokemon.
router.get('/:pokemonNumber', pokemonController.pokemonDetail)

module.exports = router;