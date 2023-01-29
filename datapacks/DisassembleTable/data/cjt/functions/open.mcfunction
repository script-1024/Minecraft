function cjt:empty
execute store result score @s cjt.book run data get block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}].Count

execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}] if data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments run function cjt:enchant/item/set
execute if data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}] if data block ~ ~ ~ Items[{Slot:10b,id:"minecraft:enchanted_book"}] run function cjt:enchant/book/set

execute if data block ~ ~ ~ Items[{Slot:10b}] unless data block ~ ~ ~ Items[{Slot:10b}].tag.Damage unless data block ~ ~ ~ Items[{Slot:12b}] run function cjt:crafting/assign
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.Damage if data block ~ ~ ~ Items[{Slot:10b,tag:{Damage:0}}] unless data block ~ ~ ~ Items[{Slot:12b}] run function cjt:crafting/assign
execute if data block ~ ~ ~ Items[{Slot:10b}].tag.Damage unless data block ~ ~ ~ Items[{Slot:10b,tag:{Damage:0}}] unless data block ~ ~ ~ Items[{Slot:12b}] run tellraw @p "\u00a7b提示> \u00a7e只有\u00a76未損壞的工具\u00a7e才能被分解"