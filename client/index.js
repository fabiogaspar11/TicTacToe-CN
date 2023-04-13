var express = require('express')
var http = require('http')
var path = require('path')
var bodyParser = require('body-parser')

var app = express()
const server = http.createServer(app)

app.use(express.static(path.join(__dirname, 'public')));

app.use(bodyParser.urlencoded({
	extended: true
}))

app.use(bodyParser.json())

app.get('/join', function(req, res){
	res.sendFile(__dirname + '/views/join.html')
})

app.get('/game', function(req, res){
	res.sendFile(__dirname + '/views/game.html')
})

app.get('/', function(req, res){
	res.sendFile(__dirname + '/views/index.html')
})

server.listen(process.env.PORT || 3000, ()=>{
	console.log("Listening on *:3000")
})

