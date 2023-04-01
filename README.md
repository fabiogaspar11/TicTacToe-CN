# Tic Tac Toe: Multiplayer Edition

I made this because I just learned what sockets in Node.JS were and I wanted to make 
a game using them. 

![alt text](example_pics/screenshot1.png)
From the main menu you can search for a random game or create a private lobby.

![alt text](example_pics/screenshot2.png)
This is what the tic tac toe board looks like in action.

To run the project, go to the main directory and run the command below.
```
node server.js
```
Then go to [localhost:4000](http://localhost:4000) to view the project.

<br>

The default port it is run at is 4000, but you can change it in the server.js file.



```
TicTacToe-Multiplayer-Containerized
├─ .git
│  ├─ config
│  ├─ description
│  ├─ FETCH_HEAD
│  ├─ HEAD
│  ├─ hooks
│  │  ├─ applypatch-msg.sample
│  │  ├─ commit-msg.sample
│  │  ├─ fsmonitor-watchman.sample
│  │  ├─ post-update.sample
│  │  ├─ pre-applypatch.sample
│  │  ├─ pre-commit.sample
│  │  ├─ pre-merge-commit.sample
│  │  ├─ pre-push.sample
│  │  ├─ pre-rebase.sample
│  │  ├─ pre-receive.sample
│  │  ├─ prepare-commit-msg.sample
│  │  └─ update.sample
│  ├─ index
│  ├─ info
│  │  └─ exclude
│  ├─ objects
│  │  ├─ info
│  │  └─ pack
│  │     ├─ pack-eb79de01b6b9c12d239a33ef1953678e7d34d04c.idx
│  │     └─ pack-eb79de01b6b9c12d239a33ef1953678e7d34d04c.pack
│  ├─ packed-refs
│  └─ refs
│     ├─ heads
│     │  └─ master
│     ├─ remotes
│     │  ├─ origin
│     │  │  └─ HEAD
│     │  └─ upstream
│     │     ├─ HEAD
│     │     └─ master
│     └─ tags
├─ .gitignore
├─ client
│  ├─ Dockerfile
│  ├─ index.js
│  ├─ package.json
│  ├─ public
│  │  ├─ android-icon
│  │  │  ├─ icon128X128.png
│  │  │  └─ icon192X192.png
│  │  ├─ apple-icon
│  │  │  ├─ icon120X120.png
│  │  │  ├─ icon152X152.png
│  │  │  ├─ icon180X180.png
│  │  │  ├─ icon57X57.png
│  │  │  └─ icon76X76.png
│  │  ├─ css
│  │  │  ├─ animate.css
│  │  │  ├─ bootstrap.min.css
│  │  │  └─ style.css
│  │  └─ js
│  │     ├─ fastclick.js
│  │     ├─ game.js
│  │     └─ loading.js
│  └─ views
│     ├─ game.html
│     ├─ index.html
│     └─ join.html
├─ docker-compose.yaml
├─ README.md
└─ server
   ├─ Dockerfile
   ├─ index.js
   └─ package.json

```