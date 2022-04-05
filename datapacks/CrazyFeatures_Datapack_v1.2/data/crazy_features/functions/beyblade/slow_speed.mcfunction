execute if score @s m_bb_motion_z matches 200.. run tag @s add doit
execute if score @s m_bb_motion_z matches ..-200 run tag @s add doit
execute if score @s m_bb_motion_x matches 200.. run tag @s add doit
execute if score @s m_bb_motion_x matches ..-200 run tag @s add doit

execute if entity @s[tag=doit] run scoreboard players operation @s m_bb_motion_z *= 10 m_constant
execute if entity @s[tag=doit] run scoreboard players operation @s m_bb_motion_x *= 10 m_constant
execute if entity @s[tag=doit] run scoreboard players operation @s m_bb_motion_z /= 14 m_constant
execute if entity @s[tag=doit] run scoreboard players operation @s m_bb_motion_x /= 14 m_constant

tag @s remove doit
