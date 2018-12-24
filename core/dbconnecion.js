var mysql = require('mysql');

var pool;

module.exports = {
    getPool: ()=> {
      if (pool) return pool;
      pool = mysql.createPool({
        host     : 'localhost',
        user     : 'root',
        password : '',
        database : 'shared_adult'
      });
      return pool;
    }
};