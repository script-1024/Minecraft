execute if score @s char matches 0 if entity @s[tag=ys] run function ys:msg/remove_character
execute if score @s char matches 1.. if score @s ys.p matches 1 run scoreboard players operation @s ys.p1 = @s char
execute if score @s char matches 1.. if score @s ys.p matches 2 run scoreboard players operation @s ys.p2 = @s char
execute if score @s char matches 1.. if score @s ys.p matches 3 run scoreboard players operation @s ys.p3 = @s char
execute if score @s char matches 1.. if score @s ys.p matches 4 run scoreboard players operation @s ys.p4 = @s char

execute if score @s char matches 1.. if score @s ys.p matches 1 run function ys:switch_characters/p1
execute if score @s char matches 1.. if score @s ys.p matches 2 run function ys:switch_characters/p2
execute if score @s char matches 1.. if score @s ys.p matches 3 run function ys:switch_characters/p3
execute if score @s char matches 1.. if score @s ys.p matches 4 run function ys:switch_characters/p4
scoreboard players set @s char -1