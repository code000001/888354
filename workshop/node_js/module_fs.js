var fs = require('fs');
var txt_type = "utf8";
var file = "infile.txt";
fs.readFile(file, txt_type, function(err, data){
        if(err) throw err;
        console.log(data);
        fs.writeFileSync('outfile.txt',data);
});
