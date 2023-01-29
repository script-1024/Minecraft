execute as @e[tag=door] at @s rotated as @s run function dun:gen/door/_rm
execute as @e[tag=room] at @s rotated as @s run function dun:gen/room/_rm

scoreboard players set summon dun.room 0
scoreboard players set place dun.room 0
scoreboard players set #pt dun.room 0