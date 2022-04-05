data merge entity @s {NoGravity:0}

execute store result score @s launch_x run data get entity @s Pos[0] 1000
execute store result score @s launch_z run data get entity @s Pos[2] 1000

execute as @s at @s run tp @s ^ ^ ^0.1

execute as @s store result score @s launch_dx run data get entity @s Pos[0] 1000
execute as @s store result score @s launch_dz run data get entity @s Pos[2] 1000

scoreboard players operation @s launch_dx -= @s launch_x
scoreboard players operation @s launch_dz -= @s launch_z


execute store result entity @s Motion[0] double 0.006 run scoreboard players get @s launch_dx
execute store result entity @s Motion[2] double 0.006 run scoreboard players get @s launch_dz

execute store result score @s m_bb_motion_x run scoreboard players get @s launch_dx
execute store result score @s m_bb_motion_z run scoreboard players get @s launch_dz
execute store result score @s m_bb_motion_x run scoreboard players operation @s launch_dx *= 10 m_constant
execute store result score @s m_bb_motion_z run scoreboard players operation @s launch_dz *= 10 m_constant
scoreboard players set @s m_bb_motion_y -1000
