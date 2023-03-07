execute unless score @s counter.attach matches 0..2 run scoreboard players set @s counter.attach 0

execute on passengers run scoreboard players set @s entity.tf.scale 10
execute on passengers run data modify entity @s interpolation_start set value -1

execute unless score @s element.state matches 1.. run scoreboard players set @s element.state 1

execute if score @s element.state matches 1 if score @s counter.attach matches 0 run scoreboard players set @s element.pyro 120
execute unless score @s element.state matches 1 run scoreboard players set @s element.pyro 120

execute if score @s counter.attach matches 0 run scoreboard players set @s timer.attach 25

scoreboard players add @s counter.attach 1