var http = require('http');
http.createServer(function(req, res){
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write('<h1>HELLO WTF!!!</h1>');
        res.write('<h2>HELLO WTF222222!!!</h2>');
        res.end();
}).listen(8080,'127.0.0.1');