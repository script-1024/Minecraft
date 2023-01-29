function rng:call
scoreboard players operation @s rand %= #4 rand

execute if score @s rand matches 0.. positioned ^ ^ ^16 if entity @e[tag=room,distance=..2] at @s positioned ^ ^ ^8 as @e[tag=door,limit=1,sort=nearest] rotated as @s run function dun:gen/door/1
execute if score @s rand matches 1.. positioned ^ ^ ^-16 if entity @e[tag=room,distance=..2] at @s positioned ^ ^ ^-8 as @e[tag=door,limit=1,sort=nearest] rotated as @s run function dun:gen/door/1
execute if score @s rand matches 2.. positioned ^16 ^ ^ if entity @e[tag=room,distance=..2] at @s positioned ^8 ^ ^ as @e[tag=door,limit=1,sort=nearest] rotated as @s run function dun:gen/door/1
execute if score @s rand matches 3.. positioned ^-16 ^ ^ if entity @e[tag=room,distance=..2] at @s positioned ^-8 ^ ^ as @e[tag=door,limit=1,sort=nearest] rotated as @s run function dun:gen/door/1