execute store result score @s entity.health.current run data get entity @s Health 1

execute unless score @s entity.health.prev matches 0.. run scoreboard players operation @s entity.health.prev = @s entity.health.current

scoreboard players operation @s entity.health.diff = @s entity.health.prev
scoreboard players operation @s entity.health.diff -= @s entity.health.current
scoreboard players operation @s entity.health.prev = @s entity.health.current

execute if score @s entity.health.diff matches 0 if data entity @s {HurtTime:10s} run function dd:entity/text_display/immune/show
execute unless score @s entity.health.diff matches 0 run function dd:entity/text_display/number/show