let express = require('express');
const port = 8080;
const hostname = 'localhost';

let app = express();

var mysql = require('mysql');

// Use Index route in the App
app.use('/', require('./routes/index'));

// Use Pokemon route in the App
app.use('/pokemons', require('./routes/pokemon'));

app.listen(port, hostname, () => {
  console.log(`El servidor se está ejecutando en http://${hostname}:${port}/`);
});