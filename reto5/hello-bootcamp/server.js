var express = require('express');
var app = express();

app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res) {
    res.sendFile(__dirname + '/index.html')
});

app.listen(4000, function() {
console.log('Corriendo en http://localhost:4000');
});