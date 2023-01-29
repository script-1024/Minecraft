scoreboard players set @s cjt.stage -1

execute if entity @s[tag=eb] run function cjt:drop/eb

execute unless data block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}] run scoreboard players set @s cjt.stage -2

execute if score @s cjt.stage matches -2 run function cjt:empty
execute if score @s cjt.stage matches -2 unless score @s cjt.empty matches 0 run data modify block ~ ~ ~ Items prepend value {id:"enchanted_book",Count:1}
execute if score @s cjt.stage matches -2 store result block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}].Slot byte 1 run scoreboard players get @s cjt.slot

data modify block ~ ~ ~ Items[{id:"minecraft:enchanted_book"}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0]
data remove block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0]

#execute if data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0].id run scoreboard players set @s cjt.stage -1
execute unless data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0].id run scoreboard players set @s cjt.stage 0
execute unless data block ~ ~ ~ Items[{Slot:10b}].tag.Enchantments[0].id run tag @s add eb