execute unless entity @e[tag=room,distance=..2] run summon armor_stand ~ ~ ~ {Tags:[dun,spawn,room],Small:1b,Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b}

execute as @e[tag=spawn,limit=1,sort=nearest] run function dun:gen/room/spawn/place