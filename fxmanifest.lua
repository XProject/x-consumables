fx_version "cerulean"
use_experimental_fxv2_oal "yes"
lua54 "yes"
game "gta5"

description "x-consumables"
version "0.0.0"

dependencies {
	"ox_lib",
    "x-status" -- comment this if you are not using x-status
}

shared_scripts {
    "@ox_lib/init.lua",
    "shared/*.lua"
}

server_scripts {
    "server/*.lua"
}

client_scripts {
    "client/*.lua",
}