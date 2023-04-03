execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 0 on passengers run data modify entity @s text set value ''
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 1 on passengers run data modify entity @s text set value '{"translate":"element.pyro"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 3 on passengers run data modify entity @s text set value '{"translate":"element.hydro"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 7 on passengers run data modify entity @s text set value '{"translate":"element.anemo"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 15 on passengers run data modify entity @s text set value '{"translate":"element.electro"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 31 on passengers run data modify entity @s text set value '{"translate":"element.dendro"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 63 on passengers run data modify entity @s text set value '{"translate":"element.cryo"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 66 on passengers run data modify entity @s text set value '{"translate":"element.cryo"}'
execute if score @s timer.icon matches -1 on vehicle if score @s element.state matches 127 on passengers run data modify entity @s text set value '{"translate":"element.geo"}'

execute store result score @s dd.element on vehicle run scoreboard players get @s dd.element
execute store result score @s timer.frozen on vehicle run scoreboard players get @s timer.frozen
execute store result score @s player.isCrit on vehicle run scoreboard players get @s player.isCrit
execute store result score @s entity.health.diff on vehicle if score @s entity.health.current matches 1.. run scoreboard players get @s entity.health.current
execute store result score @s entity.health.current on vehicle if score @s entity.health.current matches ..0 run scoreboard players get @s entity.health.current
scoreboard players operation @s entity.health.diff -= @s entity.health.current

execute unless entity @e[type=#ys:living,distance=..3] if score @s timer.frozen matches 1.. run kill @e[tag=ice,distance=..2]
execute unless entity @e[type=#ys:living,distance=..3] run function dd:entity/number/show