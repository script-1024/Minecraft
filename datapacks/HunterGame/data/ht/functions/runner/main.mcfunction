#alias entity hunter @p[team=hunter,distance=0..]

execute unless score @s runner.p matches 1..2 unless entity @a[team=runner,scores={runner.p=1}] run scoreboard players set @s runner.p 1
execute unless score @s runner.p matches 1..2 unless entity @a[team=runner,scores={runner.p=2}] run scoreboard players set @s runner.p 2

execute if score @s runner.p matches 1 store result storage ht:nbt 1p.Pos.X int 1 run scoreboard players get @s self.x
execute if score @s runner.p matches 1 store result storage ht:nbt 1p.Pos.Y int 1 run scoreboard players get @s self.y
execute if score @s runner.p matches 1 store result storage ht:nbt 1p.Pos.Z int 1 run scoreboard players get @s self.z

execute if score @s runner.p matches 2 store result storage ht:nbt 2p.Pos.X int 1 run scoreboard players get @s self.x
execute if score @s runner.p matches 2 store result storage ht:nbt 2p.Pos.Y int 1 run scoreboard players get @s self.y
execute if score @s runner.p matches 2 store result storage ht:nbt 2p.Pos.Z int 1 run scoreboard players get @s self.z

execute store result score @s target.x if entity @p[team=hunter,distance=0..] run data get entity @p[team=hunter] Pos[0] 1
execute store result score @s target.y if entity @p[team=hunter,distance=0..] run data get entity @p[team=hunter] Pos[1] 1
execute store result score @s target.z if entity @p[team=hunter,distance=0..] run data get entity @p[team=hunter] Pos[2] 1

function ht:get_distance

execute if score @s showTargetDistance matches 1 if entity @p[team=hunter,distance=0..] run title @s actionbar [{"translate":"最近的獵人距離：%s米","color":"yellow","with":[{"score":{"name":"@s","objective":"target.distance"},"color":"aqua"}]}]
execute if score @s showTargetDistance matches 1 unless entity @p[team=hunter,distance=0..] run title @s actionbar [{"translate":"§c目標消失位置：§r(%1$s, %2$s, %3$s)","color":"yellow","with":[{"score":{"name":"@s","objective":"target.x"},"color":"red"},{"score":{"name":"@s","objective":"target.y"},"color":"green"},{"score":{"name":"@s","objective":"target.z"},"color":"aqua"}]}]