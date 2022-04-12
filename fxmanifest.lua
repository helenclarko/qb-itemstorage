fx_version 'cerulean'
game 'gta5'

description 'QB-itemstorage'
version '1.0.0'

shared_script 'config.lua'

client_scripts {
	'client/main.lua',
}

server_script {
	'server/main.lua',
	'@oxmysql/lib/MySQL.lua',
}

lua54 'yes'