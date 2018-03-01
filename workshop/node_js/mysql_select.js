var sql = require('mysql');
var con = sql.createConnection({
    host: "localhost",
    user: "root",
    password: "1234",
    database: "shopdb"
});
con.connect(function(err) {
    if (err) throw err;
    console.log("Connected!");
    slc_sql = "SELECT * FROM categories";
    con.query(slc_sql, function (err, result, fields) {
        if (err) throw err;
        
        //console.log(result);
        result.forEach(function(dat){
            console.log("Product Name : "+ dat['name']);
            console.log("Product Description : "+ dat['description']);
        });
        
      });
  });