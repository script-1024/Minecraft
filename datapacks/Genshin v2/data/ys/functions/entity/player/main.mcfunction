execute if entity @s[tag=!init] run function ys:entity/player/init
execute as @e[tag=data,limit=1,sort=nearest] at @s run function ys:entity/player/data
tp @e[tag=data,limit=1,sort=nearest] @s

execute store result score @s player.atk run data get entity @e[tag=data,limit=1,sort=nearest] data.current.character.atk
execute store result score @s player.def run data get entity @e[tag=data,limit=1,sort=nearest] data.current.character.def
scoreboard players operation @s entity.atk = @s player.atk