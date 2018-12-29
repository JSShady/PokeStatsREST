/* 	pokemonController.js -- pokemon Controller
*	author: JShady
*/

var Pokemon = require('../models/pokemon');
var connection = require('../core/dbconnection');

// Display list of all Pokemons.
exports.pokemonList = (req, res) => {
    res.json([{pokemon: "Larvitar"},{pokemon: "Pupitar"},{pokemon: "Tyranitar"}]);
    connection.getConnection(function(err, connection) {
        if(err){
          console.log('Error');
        }
        else{
          console.log('Connected');
        }
    });
};

// Display detail data for a specific Pokemon
exports.pokemonDetail = (req, res) => {
    res.send('NOT IMPLEMENTED: Pokemon detail');
};
