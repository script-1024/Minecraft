scoreboard players operation @s entity.health.current -= @s entity.damage
execute store result entity @s Health float 1 run scoreboard players get @s entity.health.current
scoreboard players set @s entity.damage 0