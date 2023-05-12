fx_version 'cerulean'
game 'gta5'

author 'Onis development'
description 'Infromation board [ESX]'
version '1.0.0'

resource_type 'script' { name = 'iboard' }

ui_page 'html/index.html'

client_script 'client.lua'
    

files {
    'html/index.html',
    'html/style.css',
    'html/reset.css',
    'html/listener.js',
    'html/med.js',
    'html/img/logo.png',
    'html/img/ems.png',
}

dependencies {
  'ox_target',
  'ox_lib',
  'es_extended',
}