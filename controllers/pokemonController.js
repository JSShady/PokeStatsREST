/* 	pokemonController.js -- pokemon Controller
*	author: JShady
*/

var Pokemon = require('../models/pokemon');

// Display list of all Pokemons.
exports.pokemonList = (req, res) => {
    res.json([{pokemon: "Larvitar"},{pokemon: "Pupitar"},{pokemon: "Tyranitar"}]);
};

// Display detail data for a specific Pokemon
exports.pokemonDetail = (req, res) => {
    res.send('NOT IMPLEMENTED: Pokemon detail');
};


