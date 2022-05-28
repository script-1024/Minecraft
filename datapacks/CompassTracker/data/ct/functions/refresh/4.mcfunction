scoreboard players set #4 ct.time 0

execute run item replace entity @e[tag=c_m] container.4 with minecraft:compass{display:{Name:' "\\u00a7b追蹤器" '}, ct:1b, obj:4, LodestoneTracked:0b, LodestonePos:{X:0, Y:0, Z:0}, LodestoneDimension:"minecraft:overworld"} 1

execute store result entity @e[tag=c_m, limit=1] Items[{Slot:4b}].tag.LodestonePos.X int 1 run scoreboard players get @s ct.target.x
execute store result entity @e[tag=c_m, limit=1] Items[{Slot:4b}].tag.LodestonePos.Y int 1 run scoreboard players get @s ct.target.y
execute store result entity @e[tag=c_m, limit=1] Items[{Slot:4b}].tag.LodestonePos.Z int 1 run scoreboard players get @s ct.target.z
data modify entity @e[tag=c_m, limit=1] Items[{Slot:4b}].tag.LodestoneDimension set from entity @p[distance=1..] Dimension

execute if score @s ct.item.slot matches 0 run item replace entity @s hotbar.0 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 1 run item replace entity @s hotbar.1 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 2 run item replace entity @s hotbar.2 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 3 run item replace entity @s hotbar.3 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 4 run item replace entity @s hotbar.4 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 5 run item replace entity @s hotbar.5 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 6 run item replace entity @s hotbar.6 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 7 run item replace entity @s hotbar.7 from entity @e[tag=c_m, limit=1] container.4
execute if score @s ct.item.slot matches 8 run item replace entity @s hotbar.8 from entity @e[tag=c_m, limit=1] container.4
