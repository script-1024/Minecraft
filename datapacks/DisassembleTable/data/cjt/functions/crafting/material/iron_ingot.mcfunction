scoreboard players set @s cjt.stage -1

execute unless data block ~ ~ ~ Items[{id:"minecraft:iron_ingot"}] run scoreboard players set @s cjt.stage -2

execute if score @s cjt.stage matches -2 run function cjt:empty
execute if score @s cjt.stage matches -2 run scoreboard players remove @s cjt.out 1
execute if score @s cjt.stage matches -2 unless score @s cjt.empty matches 0 run data modify block ~ ~ ~ Items prepend value {id:"iron_ingot",Count:1}
execute if score @s cjt.stage matches -2 store result block ~ ~ ~ Items[{id:"minecraft:iron_ingot"}].Slot byte 1 run scoreboard players get @s cjt.slot

execute store result score @s cjt.mat run data get block ~ ~ ~ Items[{id:"minecraft:iron_ingot"}].Count
scoreboard players operation @s cjt.mat += @s cjt.out
execute store result block ~ ~ ~ Items[{id:"minecraft:iron_ingot"}].Count byte 1 run scoreboard players get @s cjt.mat

scoreboard players set @s cjt.stage -6