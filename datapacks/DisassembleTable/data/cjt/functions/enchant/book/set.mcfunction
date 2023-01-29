execute if score @s cjt.book matches 1.. if data block ~ ~ ~ Items[{Slot:10b}].tag.StoredEnchantments[0].id run function cjt:enchant/book/get_slot

execute store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get @s cjt.book

execute if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:enchanted_book"}] unless data block ~ ~ ~ Items[{Slot:10b}].tag.StoredEnchantments[0].id run item replace block ~ ~ ~ container.10 with book