var mysql = require('mysql');

var pool;

module.exports = {
    getPool: ()=> {
      if (pool) return pool;
      pool = mysql.createPool({
        connectionLimit: 50,
        host     : 'localhost',
        user     : 'root',
        password : '',
        database : 'pokemondb'
      });
      return pool;
    }
};
