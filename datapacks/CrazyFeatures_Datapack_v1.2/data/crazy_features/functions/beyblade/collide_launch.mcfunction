execute at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=m_beyblade_center,distance=0.1..1,limit=1,sort=nearest,tag=!m_bb_defeated]

execute at @s run summon marker ^ ^ ^-0.1 {Tags:[m_bb_collide_dir]}




execute at @s store result score @s launch_x run data get entity @s Pos[0] 10000
execute at @s store result score @s launch_z run data get entity @s Pos[2] 10000

execute at @s store result score @s launch_dx run data get entity @e[type=marker,tag=m_bb_collide_dir,distance=..0.11,limit=1,sort=nearest] Pos[0] 10000
execute at @s store result score @s launch_dz run data get entity @e[type=marker,tag=m_bb_collide_dir,distance=..0.11,limit=1,sort=nearest] Pos[2] 10000
kill @e[type=marker,tag=m_bb_collide_dir]

scoreboard players operation @s launch_dx -= @s launch_x
scoreboard players operation @s launch_dz -= @s launch_z

scoreboard players operation @s launch_dx *= m_constant -1
scoreboard players operation @s launch_dz *= m_constant -1

scoreboard players operation @s m_bb_motion_x = @s launch_dx
scoreboard players operation @s m_bb_motion_z = @s launch_dz
