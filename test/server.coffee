http = require('http')
url = require('url')
path = require('path')
fs = require('fs')

port = parseInt(process.argv[2], 10) or 8888
pak = require(path.join(__dirname, '..', 'package.json'))
json = require(path.join(__dirname, '..', 'src', 'data', 'images.json'))

# create a server that either returns json image list or index html
http.createServer((request, response) ->
  if url.parse(request.url).pathname is '/images.json'
    response.writeHead 200
    response.write JSON.stringify(json)
    response.end()
  else
    fs.readFile path.join(__dirname, 'index.html'), (error, content) ->
      if error
        response.writeHead 500
        response.end error
      else
        response.writeHead 200,
          'Content-Type': 'text/html'
        response.end content, 'utf-8'
).listen port

console.log "View images for #{pak.name} at http://localhost:#{port}"