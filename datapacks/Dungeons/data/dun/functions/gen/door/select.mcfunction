function rng:call
scoreboard players operation @s rand %= #10 rand

execute if score summon dun.room < set dun.room if score @s rand matches 0..2 run function dun:gen/door/0
execute if score summon dun.room < set dun.room if score @s rand matches 3..6 run function dun:gen/door/1
execute if score summon dun.room < set dun.room if score @s rand matches 7..9 run function dun:gen/door/2

execute if score summon dun.room >= set dun.room run function dun:gen/door/0

execute if score summon dun.room < set dun.room if score @s rand matches 2..9 positioned ^ ^ ^-8 run function dun:gen/room/normal/summon

execute if score place dun.room >= set dun.room unless score #pt dun.room matches 1 positioned ^ ^ ^-8 run function dun:gen/room/portal/summon