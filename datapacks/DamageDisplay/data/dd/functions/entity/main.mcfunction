execute if score #dd-IgnoreVanilla tag matches 0 if entity @s[tag=!txt,tag=!data] run function dd:entity/health
execute if score #dd-IgnoreVanilla tag matches 1 if entity @s[tag=!txt,tag=!data] unless score @s entity.damage matches 1.. run function dd:entity/health
execute if entity @s[tag=txt] unless score @s entity.tf.scale = @s entity.tf.scale.prev run function dd:entity/transformation/scale

execute if score @s dd.timer matches ..-15 run kill @s

execute if entity @s[tag=d,tag=!crit] if score @s dd.timer matches 20.. run tag @s add x
execute if entity @s[tag=d,tag=crit] if score @s dd.timer matches 50.. run tag @s add x

execute if entity @s[tag=d,tag=!x] run scoreboard players operation @s entity.tf.scale = @s dd.timer
execute if entity @s[tag=x,tag=!crit] if score @s dd.timer matches 10.. run scoreboard players operation @s entity.tf.scale = @s dd.timer
execute if entity @s[tag=x,tag=crit] if score @s dd.timer matches 35.. run scoreboard players operation @s entity.tf.scale = @s dd.timer