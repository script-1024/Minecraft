execute if score @s cjt.stage matches 0 run scoreboard players set @s cjt.stage 1

execute if score @s cjt.stage matches 1 run scoreboard players set @s cjt.out 1
execute if score @s cjt.stage matches 1 run function cjt:crafting/material/flint

execute if score @s cjt.stage matches -12 run scoreboard players set @s cjt.stage 2

execute if score @s cjt.stage matches 2 run scoreboard players set @s cjt.out 1
execute if score @s cjt.stage matches 2 run function cjt:crafting/material/stick

execute if score @s cjt.stage matches -3 run scoreboard players set @s cjt.stage 3

execute if score @s cjt.stage matches 3 run scoreboard players set @s cjt.out 1
execute if score @s cjt.stage matches 3 run function cjt:crafting/material/feather

execute if score @s cjt.stage matches -13 run scoreboard players remove @s cjt.in 4
execute if score @s cjt.stage matches -13 store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get @s cjt.in
execute if score @s cjt.stage matches -13 run scoreboard players set @s cjt.stage 0