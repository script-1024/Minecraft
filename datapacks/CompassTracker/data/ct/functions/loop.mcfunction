execute unless entity @a[scores={ct.amount=0}] run scoreboard players reset @a ct.amount
execute as @a[tag=tracker, limit=1] unless score @s ct.amount matches -2147483648..2147483647 unless entity @a[scores={ct.amount=0..}] run scoreboard players set @s ct.amount 0
execute as @a[tag=tracker, limit=1] unless score @s ct.amount matches -2147483648..2147483647 store result score @s ct.amount if entity @a[scores={ct.amount=0..}]

execute as @a if score @s ct.trigger matches 1.. run function ct:modify_settings

execute as @a if data entity @s Inventory[{id:"minecraft:compass", tag:{display:{Name:'{"text":"tracker"}'}}}] unless data entity @s Inventory[{id:"minecraft:compass", tag:{tracker:1b}}] run function ct:give

execute as @a if entity @s[tag=!tracker] if data entity @s Inventory[{id:"minecraft:compass", tag:{tracker:1b}}] run tag @s add tracker
execute as @a if entity @s[tag=tracker] unless data entity @s Inventory[{id:"minecraft:compass", tag:{tracker:1b}}] run tag @p remove tracker

execute as @a[tag=tracker] store result score @s ct.item.slot run data get entity @s Inventory[{id:"minecraft:compass", tag:{tracker:1b}}].Slot
execute as @a[tag=tracker] store result score @s ct.item.count run data get entity @s Inventory[{id:"minecraft:compass", tag:{tracker:1b}}].Count
execute as @a[tag=tracker] if score @s ct.item.slot matches 0 unless data entity @s Inventory[{Slot:0b, id:"minecraft:compass", tag:{tracker:1b}}] run function ct:wrong
execute as @a[tag=tracker] unless score @s ct.item.count matches 1 if data entity @s Inventory[{Slot:0b, id:"minecraft:compass", tag:{tracker:1b}}] run function ct:wrong

execute if score #0 ct.time >= refresh ct.settings as @a[tag=tracker, tag=!ct.wrong] at @s if score @s ct.amount matches 0 run function ct:refresh/0
execute if score #1 ct.time >= refresh ct.settings as @a[tag=tracker, tag=!ct.wrong] at @s if score @s ct.amount matches 1 run function ct:refresh/1
execute if score #2 ct.time >= refresh ct.settings as @a[tag=tracker, tag=!ct.wrong] at @s if score @s ct.amount matches 2 run function ct:refresh/2
execute if score #3 ct.time >= refresh ct.settings as @a[tag=tracker, tag=!ct.wrong] at @s if score @s ct.amount matches 3 run function ct:refresh/3
execute if score #4 ct.time >= refresh ct.settings as @a[tag=tracker, tag=!ct.wrong] at @s if score @s ct.amount matches 4 run function ct:refresh/4

execute as @a store result score @s ct.self.x run data get entity @s Pos[0]
execute as @a store result score @s ct.self.y run data get entity @s Pos[1]
execute as @a store result score @s ct.self.z run data get entity @s Pos[2]

execute as @a at @s run scoreboard players operation @s ct.target.x = @p[distance=1..] ct.self.x
execute as @a at @s run scoreboard players operation @s ct.target.y = @p[distance=1..] ct.self.y
execute as @a at @s run scoreboard players operation @s ct.target.z = @p[distance=1..] ct.self.z

execute if score #math ct.time >= track_delay ct.settings as @a at @s run function ct:math

execute if score show_distance ct.settings matches 1.. as @a[tag=tracker] if score @s ct.distance < distance_threshold_value ct.settings if data entity @s SelectedItem.tag.tracker run title @s actionbar {"translate":"最近的玩家距離 %s 格", "with":[{"score":{"name":"@s","objective":"ct.distance"},"color":"green"}] ,"color":"yellow"}
execute if score show_distance ct.settings matches 1.. as @a[tag=tracker] if score @s ct.distance >= distance_threshold_value ct.settings if data entity @s SelectedItem.tag.tracker run title @s actionbar {"translate":"最近的玩家距離 %s 格", "with":[{"score":{"name":"@s","objective":"ct.distance"},"color":"red"}] ,"color":"yellow"}
