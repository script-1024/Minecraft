execute on passengers run scoreboard players set @s entity.tf.scale 10
execute on passengers r run data modify entity @s interpolation_start set value -1

execute if score @s counter.attach matches 0 run scoreboard players set @s timer.attach 25
scoreboard players add @s counter.attach 1

execute if score @s element.state matches 1 run function ys:entity/element/parse/vaporize
execute if score @s element.state matches 32 run function ys:entity/element/parse/vaporize
execute if score @s element.state matches 63 run function ys:entity/element/parse/frozen