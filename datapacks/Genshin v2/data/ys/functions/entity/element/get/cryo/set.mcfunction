execute on passengers run scoreboard players set @s entity.tf.scale 10
execute on passengers run data modify entity @s interpolation_start set value -1

execute if score @s counter.attach matches 0 run scoreboard players set @s timer.attach 25
scoreboard players add @s counter.attach 1

execute if score @s element.state matches 1 on passengers run data modify entity @s text set value '[{"translate":"element.pyro"},{"translate":"element.cryo"}]'
execute if score @s element.state matches 3 on passengers run data modify entity @s text set value '[{"translate":"element.hydro"},{"translate":"element.cryo"}]'
execute if score @s element.state matches 63 on passengers run data modify entity @s text set value '[{"translate":"element.cryo"}]'

execute if score @s element.state matches 63 store result score @s entity.damage on attacker run scoreboard players get @s entity.atk
execute if score @s element.state matches 63 run function ys:entity/damage

execute unless score @s element.state matches 63 on passengers run scoreboard players set @s timer.icon 8

execute if score @s element.state matches 1 run function ys:entity/element/parse/melt
execute if score @s element.state matches 3 run function ys:entity/element/parse/frozen