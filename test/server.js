var http = require('http');
var url = require('url');
var path = require('path');
var fs = require('fs');
var port = parseInt(process.argv[2], 10) || 8888;
var pak = require(path.join(__dirname, '..', 'package.json'));
var json = require(path.join(__dirname, '..', 'src', 'data', 'images.json'));

http.createServer(function(request, response) {

  if (url.parse(request.url).pathname === '/images.json') {

    response.writeHead(200);
    response.write(JSON.stringify(json));
    response.end();

  } else {

    fs.readFile(path.join(__dirname, 'index.html'), function(error, content) {
      if (error) {
        response.writeHead(500);
        response.end(error);
      }
      else {
        response.writeHead(200, { 'Content-Type': 'text/html' });
        response.end(content, 'utf-8');
      }
    });

  }

}).listen(port);

console.log('View images for ' + pak.name + ' at http://localhost:' + port);