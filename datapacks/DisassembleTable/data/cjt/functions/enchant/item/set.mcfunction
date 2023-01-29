execute if score @s cjt.book matches 1.. if data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0].id run function cjt:enchant/item/get_slot

execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get @s cjt.book

execute unless data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0].id run data remove block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments