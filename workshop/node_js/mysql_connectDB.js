var sql = require('mysql');
var con = sql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: "shopdb"
});
var insrt_sql = "INSERT INTO categories (id, name, description, created, modified) VALUES ('12', 'bank', 'omegalul', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP)";
con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    con.query("SELECT * FROM categories", function (err, result, fields) {
        if (err) throw err;
        console.log(result);
      });
    con.query(insrt_sql, function (err, result) {
        if (err) throw err;
        console.log("Insertion completed.");
      });  
  });