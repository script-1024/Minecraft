execute store result score @s entity.health.current run data get entity @s Health 1

execute unless score @s entity.health.prev matches 0.. run scoreboard players operation @s entity.health.prev = @s entity.health.current

scoreboard players operation @s entity.health.diff = @s entity.health.prev
scoreboard players operation @s entity.health.diff -= @s entity.health.current
scoreboard players operation @s entity.health.prev = @s entity.health.current

execute unless score @s entity.health.diff matches 0 run function dd:entity/number/show