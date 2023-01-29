# keep:
# -1 working...
# -2 new
# -3 stick
# -4 wood
# -5 stone
# -6 iron
# -7 gold
# -8 diamond
# -9 netherite
# -10 leather
# -11 book
# -12 flint
# -13 feather

execute store result score @s cjt.in run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0].id run function cjt:crafting/material/enchanted_book
execute if score @s cjt.empty matches ..7 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:arrow"}] if score @s cjt.in matches 4.. run function cjt:crafting/items/arrow
execute if score @s cjt.empty matches ..7 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:netherite_axe",tag:{Damage:0}}] run function cjt:crafting/items/netherite_axe
execute if score @s cjt.empty matches ..7 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:netherite_hoe",tag:{Damage:0}}] run function cjt:crafting/items/netherite_hoe
execute if score @s cjt.empty matches ..7 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:netherite_pickaxe",tag:{Damage:0}}] run function cjt:crafting/items/netherite_pickaxe
execute if score @s cjt.empty matches ..7 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:netherite_shovel",tag:{Damage:0}}] run function cjt:crafting/items/netherite_shovel
execute if score @s cjt.empty matches ..7 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:netherite_sword",tag:{Damage:0}}] run function cjt:crafting/items/netherite_sword
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:diamond_axe",tag:{Damage:0}}] run function cjt:crafting/items/diamond_axe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:diamond_hoe",tag:{Damage:0}}] run function cjt:crafting/items/diamond_hoe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:diamond_pickaxe",tag:{Damage:0}}] run function cjt:crafting/items/diamond_pickaxe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:diamond_shovel",tag:{Damage:0}}] run function cjt:crafting/items/diamond_shovel
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:diamond_sword",tag:{Damage:0}}] run function cjt:crafting/items/diamond_sword
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_axe",tag:{Damage:0}}] run function cjt:crafting/items/iron_axe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_hoe",tag:{Damage:0}}] run function cjt:crafting/items/iron_hoe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_pickaxe",tag:{Damage:0}}] run function cjt:crafting/items/iron_pickaxe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_shovel",tag:{Damage:0}}] run function cjt:crafting/items/iron_shovel
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:iron_sword",tag:{Damage:0}}] run function cjt:crafting/items/iron_sword
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stone_axe",tag:{Damage:0}}] run function cjt:crafting/items/stone_axe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stone_hoe",tag:{Damage:0}}] run function cjt:crafting/items/stone_hoe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stone_pickaxe",tag:{Damage:0}}] run function cjt:crafting/items/stone_pickaxe
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stone_shovel",tag:{Damage:0}}] run function cjt:crafting/items/stone_shovel
execute if score @s cjt.empty matches ..8 if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:stone_sword",tag:{Damage:0}}] run function cjt:crafting/items/stone_sword