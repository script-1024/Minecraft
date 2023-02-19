execute if entity @s[tag=!d] run function dd:entity/health
execute if entity @s[tag=!d] run function dd:entity/state
execute if entity @s[tag=d] run function dd:entity/transformation/scale

execute if score @s dd.timer matches ..-15 run kill @s

execute if entity @s[tag=t] if score @s dd.timer matches 20.. run tag @s add x
execute if entity @s[tag=f] if score @s dd.timer matches 20.. run tag @s add x

execute if entity @s[tag=d,tag=!x] run scoreboard players operation @s entity.transformation.scale = @s dd.timer
execute if entity @s[tag=t,tag=x] if score @s dd.timer matches 10.. run scoreboard players operation @s entity.transformation.scale = @s dd.timer
execute if entity @s[tag=f,tag=x] if score @s dd.timer matches 10.. run scoreboard players operation @s entity.transformation.scale = @s dd.timer