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
│  ├─ COMMIT_EDITMSG
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
│  │  ├─ 2c
│  │  │  └─ 28b66e9f78cb3bb893ccc3aa08af4530fa677a
│  │  ├─ 2e
│  │  │  └─ 7dd17009759d71804bfddef3e2bf10e081b791
│  │  ├─ 31
│  │  │  └─ 736fc23cff9be81f22418fa3e3ad162db69095
│  │  ├─ 34
│  │  │  └─ ae7df484bf14e2756c225e90cdf735f255f7f9
│  │  ├─ 42
│  │  │  └─ 4f7830e33d2cec4089638011dac1e103026304
│  │  ├─ 46
│  │  │  └─ 2a7c1d039114c707a30760c18414013656cb56
│  │  ├─ 74
│  │  │  └─ 071b83db7ff734b174e868c0f85630251a6b8f
│  │  ├─ 75
│  │  │  └─ 329f932320463779d48e0ad17e48728edb3dfa
│  │  ├─ 85
│  │  │  └─ ec94c3344472f06f53f7f9a688919110312a8a
│  │  ├─ 98
│  │  │  └─ c0e1a8ce975c15d60a813d4243ef9aac249374
│  │  ├─ 9c
│  │  │  └─ 5389a6c4f1fd5dd9e34d3073265d5bc199d986
│  │  ├─ bd
│  │  │  └─ 7eec49775aa50a21e71d7a43fee197c36fdda2
│  │  ├─ bf
│  │  │  └─ bdcb3f2c332fa9cf2da294bfa14fe73d51f53a
│  │  ├─ c4
│  │  │  └─ 99d3d18e2365c8be1b00a85dca9c0e96f2ef79
│  │  ├─ e2
│  │  │  └─ 61fda4b714e98807ffb9428242fa890b2bb44a
│  │  ├─ ea
│  │  │  └─ 05589e5e47a2c2e6fa31b9cd5afeef39d32b70
│  │  ├─ eb
│  │  │  └─ 4ebf816af81b21b8444621d9c664a8a95d26ed
│  │  ├─ f7
│  │  │  └─ 1a484dcf2328904bf774fd1733b43e1fceab43
│  │  ├─ fa
│  │  │  └─ 36281caa27560f7f2b0ec98e3004923ce728e2
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
│     │  │  ├─ HEAD
│     │  │  └─ master
│     │  └─ upstream
│     │     ├─ HEAD
│     │     └─ master
│     └─ tags
├─ .gitignore
├─ client
│  ├─ Dockerfile
│  ├─ index.js
│  ├─ package-lock.json
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