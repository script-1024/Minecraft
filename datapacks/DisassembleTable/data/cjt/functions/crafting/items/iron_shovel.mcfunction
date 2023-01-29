execute if score @s cjt.stage matches 0 run scoreboard players set @s cjt.stage 1

execute if score @s cjt.stage matches 1 run scoreboard players set @s cjt.out 1
execute if score @s cjt.stage matches 1 run function cjt:crafting/material/iron_ingot

execute if score @s cjt.stage matches -6 run scoreboard players set @s cjt.stage 2

execute if score @s cjt.stage matches 2 run scoreboard players set @s cjt.out 2
execute if score @s cjt.stage matches 2 run function cjt:crafting/material/stick

execute if score @s cjt.stage matches -3 run item replace block ~ ~ ~ container.10 with air
execute if score @s cjt.stage matches -3 run scoreboard players set @s cjt.stage 0