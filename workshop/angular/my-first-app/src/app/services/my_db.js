var mysql = require('mysql');

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "1234",
  database : "shopdb"
});

exports.con = con; 