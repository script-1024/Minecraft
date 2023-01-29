execute unless score @s cjt.stage matches -2147483648..2147483647 run scoreboard players set @s cjt.stage 0

execute unless data block ~ ~ ~ Items[{Slot:14b}].tag.btn run function cjt:btn/confirm
execute unless data block ~ ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData set value 200
execute if data block ~ ~ ~ Items[{Slot:10b}] run data modify block ~ ~ ~ Items[{Slot:14b}].tag.CustomModelData set value 201

execute unless data block ~ ~ ~ Items[{Slot:23b}].tag.btn run function cjt:btn/next
execute if data block ~ ~ ~ Items[{Slot:23b}].tag.btn run function cjt:btn/change_color

execute unless block ~ ~ ~ barrel run function cjt:remove

function cjt:drop/illegal

execute if data block ~ ~ ~ Items[{Slot:12b}] unless data block ~ ~ ~ Items[{Slot:12b,id:"minecraft:book"}] run function cjt:drop/12