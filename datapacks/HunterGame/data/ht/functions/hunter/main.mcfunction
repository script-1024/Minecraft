#alias entity runner @p[team=runner,distance=0..]

execute store result score @s runner.p if entity @p[team=runner,distance=0..] run scoreboard players get @p[team=runner] runner.p
execute store result score @s target.x if entity @p[team=runner,distance=0..] run data get entity @p[team=runner] Pos[0] 1
execute store result score @s target.y if entity @p[team=runner,distance=0..] run data get entity @p[team=runner] Pos[1] 1
execute store result score @s target.z if entity @p[team=runner,distance=0..] run data get entity @p[team=runner] Pos[2] 1

function ht:get_distance

execute if score @s showTargetDistance matches 0 if score @s target.distance matches 50.. if entity @p[team=runner,distance=0..] run title @s actionbar [{"translate":"最近的遊俠距離：%s米","color":"yellow","with":[{"score":{"name":"@s","objective":"target.distance"},"color":"aqua"}]}]
execute if score @s showTargetDistance matches 1 if entity @p[team=runner,distance=0..] run title @s actionbar [{"translate":"最近的遊俠距離：%s米","color":"yellow","with":[{"score":{"name":"@s","objective":"target.distance"},"color":"aqua"}]}]
execute unless entity @p[team=runner,distance=0..] run title @s actionbar [{"translate":"§c目標消失位置：§r(%1$s, %2$s, %3$s)","color":"yellow","with":[{"score":{"name":"@s","objective":"target.x"},"color":"red"},{"score":{"name":"@s","objective":"target.y"},"color":"green"},{"score":{"name":"@s","objective":"target.z"},"color":"aqua"}]}]

execute store result score @s player.score run data get entity @s Inventory[{id:"minecraft:compass"}].Count 1
execute unless score @s player.score matches 1 run function ht:give_compass

execute if data entity @s Inventory[{Slot:8b}].tag.tracker if entity @p[team=runner,distance=0..] run function ht:hunter/tracker