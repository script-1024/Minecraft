scoreboard players set @s cjt.sw 0

# 原木
execute if data block ~ ~ ~ Items[{id:"minecraft:warped_stem"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:spruce_log"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:oak_log"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:mangrove_log"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:jungle_log"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_log"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:crimson_stem"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:birch_log"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:acacia_log"}] run scoreboard players add @s cjt.sw 1

# 木材
execute if data block ~ ~ ~ Items[{id:"minecraft:warped_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:spruce_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:oak_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:mangrove_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:jungle_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:dark_oak_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:crimson_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:birch_planks"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:acacia_planks"}] run scoreboard players add @s cjt.sw 1

# 鵝卵石類
execute if data block ~ ~ ~ Items[{id:"minecraft:cobbled_deepslate"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:cobblestone"}] run scoreboard players add @s cjt.sw 1
execute if data block ~ ~ ~ Items[{id:"minecraft:blackstone"}] run scoreboard players add @s cjt.sw 1

execute if score @s cjt.sw matches 0 run data modify block ~ ~ ~ Items[{Slot:23b}].tag.CustomModelData set value 202
execute if score @s cjt.sw matches 1.. run data modify block ~ ~ ~ Items[{Slot:23b}].tag.CustomModelData set value 203