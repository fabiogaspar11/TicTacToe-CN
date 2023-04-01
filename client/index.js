var express = require('express')
var http = require('http')
var path = require('path')
var bodyParser = require('body-parser')

var app = express()
const server = http.createServer(app)


var gameType;
function getGameType(gameQuery){
	for (key in gameQuery){
		gameType = key.toString()
	}
}


app.use(express.static(path.join(__dirname, 'public')));

app.use(bodyParser.urlencoded({
	extended: true
}))

app.use(bodyParser.json())

app.get('/join', function(req, res){
	res.sendFile(__dirname + '/views/join.html')
})

app.get('/game', function(req, res){
	gameQuery = req.query
	getGameType(gameQuery)
	res.sendFile(__dirname + '/views/game.html')
})

app.get('/', function(req, res){
	res.sendFile(__dirname + '/views/index.html')
})

server.listen(3000, ()=>{
	console.log("Listening on *:3000")
})

