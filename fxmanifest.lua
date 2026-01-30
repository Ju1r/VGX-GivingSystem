fx_version 'cerulean'
game 'gta5'

author 'VGX DEV'
description 'Made By Just.A, https://discord.gg/hnucPvSRHa'
version '1.1.1'
lua54 'yes'

ui_page 'html/index.html'

shared_scripts {
  'config.lua'
}

client_scripts {
  'client/main.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/*.lua',
}

files {
  'html/index.html',
  'html/style.css',
  'html/app.js',
  'html/sounds/*.mp3'
}


