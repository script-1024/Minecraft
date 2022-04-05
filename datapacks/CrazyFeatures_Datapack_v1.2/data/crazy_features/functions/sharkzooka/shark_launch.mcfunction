data merge entity @s {NoGravity:0}

execute as @s store result score @s launch_x run data get entity @s Pos[0] 1000
execute as @s store result score @s launch_y run data get entity @s Pos[1] 1000
execute as @s store result score @s launch_z run data get entity @s Pos[2] 1000

execute as @s at @s run tp @s ^ ^ ^0.01

execute as @s store result score @s launch_dx run data get entity @s Pos[0] 1000
execute as @s store result score @s launch_dy run data get entity @s Pos[1] 1000
execute as @s store result score @s launch_dz run data get entity @s Pos[2] 1000

scoreboard players operation @s launch_dx -= @s launch_x
scoreboard players operation @s launch_dy -= @s launch_y
scoreboard players operation @s launch_dz -= @s launch_z


execute store result entity @s Motion[0] double 0.27 run scoreboard players get @s launch_dx
execute store result entity @s Motion[1] double 0.27 run scoreboard players get @s launch_dy
execute store result entity @s Motion[2] double 0.27 run scoreboard players get @s launch_dz
