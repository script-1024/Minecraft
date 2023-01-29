function cjt:empty
item replace block ~ ~ ~ container.26 with enchanted_book
data modify block ~ ~ ~ Items[{Slot:26b}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:10b}].tag.StoredEnchantments[0]
data remove block ~ ~ ~ Items[{Slot:10b}].tag.StoredEnchantments[0]
scoreboard players remove @s cjt.book 1
execute store result block ~ ~ ~ Items[{Slot:26b}].Slot byte 1 run scoreboard players get @s cjt.slot