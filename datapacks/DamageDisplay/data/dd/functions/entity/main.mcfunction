execute if entity @s[tag=txt] run function dd:entity/health
execute if entity @s[tag=txt] run function dd:entity/transformation/scale

execute if score @s dd.timer matches ..-15 run kill @s

execute if entity @s[tag=txt] if score @s dd.timer matches 20.. run tag @s add x

execute if entity @s[tag=txt,tag=!x] run scoreboard players operation @s entity.tf.scale = @s dd.timer
execute if entity @s[tag=num,tag=x] if score @s dd.timer matches 10.. run scoreboard players operation @s entity.tf.scale = @s dd.timer
execute if entity @s[tag=efc,tag=x] if score @s dd.timer matches 10.. run scoreboard players operation @s entity.tf.scale = @s dd.timer