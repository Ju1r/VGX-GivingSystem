fx_version 'cerulean'
game 'gta5'

author 'VGX DEV'
description 'Made By Just.A, https://discord.gg/hnucPvSRHa'
version '1.0.0'

ui_page 'html/index.html'

shared_scripts {
  'config.lua'
}

client_scripts {
  'client/main.lua'
}

server_scripts {
  '@oxmysql/lib/MySQL.lua',
  'server/db.lua',
  'server/main.lua'
}

files {
  'html/index.html',
  'html/style.css',
  'html/app.js',
  'html/sounds/*.mp3'
}

lua54 'yes'
