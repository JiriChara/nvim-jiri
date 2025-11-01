# 🌀 Jiří’s Pure Neovim Config

A clean, fast, and modern Neovim configuration written in pure Lua, focused on performance and web development (especially TypeScript).

## 🚀 Features

* ⚡ Minimal and fast — built from scratch with no bloat.
* 🧠 Pure Lua configuration — easy to read, easy to extend.
* 💻 Web dev ready — optimized for TypeScript, JavaScript, and frontend tools.
* 🪶 Minimal dependencies — no clutter, no legacy Vimscript
* 🐳 Docker-ready — experiment safely without touching your local config

## 🐋 Run in Docker

Test your Neovim setup in a clean Alpine Linux environment:

```
# Build the container
docker-compose up --build

# Start Neovim interactively
docker-compose run --rm nvim
```

Your local `./nvim/init.lua` is mounted into the container at `/root/.config/nvim/init.lua`, so changes on your host are instantly applied.

## 📦 Plugin Management with lazy.nvim

This configuration uses lazy.nvim for modern, asynchronous, and on-demand plugin loading.

Lazy.nvim automatically installs itself on first run — no manual setup needed.

You can open the plugin manager inside Neovim with:

```
:Lazy
```

## 📁 Project Structure

```
nvim-docker/
├── Dockerfile
├── docker-compose.yml
└── nvim/
    └── init.lua
```

## 🧹 Cleanup

To stop and remove containers:

```
docker-compose down
```

## 📜 License

Copyright © 2025 Jiří Chára
All rights reserved.
