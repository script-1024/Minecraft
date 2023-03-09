execute on passengers run scoreboard players set @s entity.tf.scale 10
execute on passengers run data modify entity @s interpolation_start set value -1

execute if score @s counter.attach matches 0 run scoreboard players set @s timer.attach 25
scoreboard players add @s counter.attach 1

execute if score @s element.state matches 1 run function ys:entity/element/parse/melt
execute if score @s element.state matches 3 run function ys:entity/element/parse/frozen