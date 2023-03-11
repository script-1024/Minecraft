execute if score @s timer.icon matches ..0 run data modify entity @s text set value ''
execute store result score @s timer.frozen on vehicle run scoreboard players get @s timer.frozen
execute store result score @s entity.health.diff on vehicle if score @s entity.health.current matches 1.. run scoreboard players get @s entity.health.current
execute store result score @s entity.health.current on vehicle if score @s entity.health.current matches ..0 run scoreboard players get @s entity.health.current
scoreboard players operation @s entity.health.diff -= @s entity.health.current

execute unless entity @e[type=#ys:living,distance=..3] if score @s timer.frozen matches 1.. run kill @e[tag=ice,distance=..2]
execute unless entity @e[type=#ys:living,distance=..3] run function dd:entity/number/show