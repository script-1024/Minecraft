scoreboard players reset @s gen
function dun:_cl

tellraw @a [{"storage":"dun:lang","nbt":"msg.tips.prefix"},{"storage":"dun:lang","nbt":"msg.tips.dun.gen"}]

execute positioned 0 0 0 run function dun:gen/room/spawn/summon