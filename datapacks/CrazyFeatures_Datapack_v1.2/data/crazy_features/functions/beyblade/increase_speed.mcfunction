execute if score @s m_bb_motion_z matches 200.. run tag @s add dontdoit
execute if score @s m_bb_motion_z matches ..-200 run tag @s add dontdoit
execute if score @s m_bb_motion_x matches 200.. run tag @s add dontdoit
execute if score @s m_bb_motion_x matches ..-200 run tag @s add dontdoit

execute if score @s m_bb_motion_z matches ..-800 run tag @s add dontdoit2
execute if score @s m_bb_motion_z matches 800.. run tag @s add dontdoit2
execute if score @s m_bb_motion_x matches ..-800 run tag @s add dontdoit2
execute if score @s m_bb_motion_x matches 800.. run tag @s add dontdoit2


execute if entity @s[tag=!dontdoit2,tag=dontdoit] run scoreboard players operation @s m_bb_motion_z *= 3 m_constant
execute if entity @s[tag=!dontdoit2,tag=dontdoit] run scoreboard players operation @s m_bb_motion_x *= 3 m_constant
execute if entity @s[tag=!dontdoit2,tag=!dontdoit] run scoreboard players operation @s m_bb_motion_z *= 8 m_constant
execute if entity @s[tag=!dontdoit2,tag=!dontdoit] run scoreboard players operation @s m_bb_motion_x *= 8 m_constant

tag @s remove dontdoit
tag @s remove dontdoit2
