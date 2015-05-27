path = require('path')
express = require('express')
serveStatic = require('serve-static')
pak = require(path.join(__dirname, '..', 'package.json'))
imageList = require(path.join(__dirname, '..', 'src', 'data', 'images.json'))

port = parseInt(process.argv[2], 10) or 8888
staticDirectory = path.join(__dirname, 'static')

app = express()
app.use(express.static(staticDirectory))
app.get '/images.json',  (req, res) -> res.send(JSON.stringify(imageList))
app.listen port, -> console.log "\n #{pak.name} @ http://localhost:#{port}"
