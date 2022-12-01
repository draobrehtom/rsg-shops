fx_version 'cerulean'
game "rdr3"
rdr3_warning "I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships."

author 'rexshack and qbcore'
description 'rsg-shops'

client_scripts {
	'client/client.lua'
}

server_scripts {
	'server/server.lua'
}

shared_scripts {
	'config.lua'
}

dependencies {
	'qr-core',
	'qr-inventory'
}