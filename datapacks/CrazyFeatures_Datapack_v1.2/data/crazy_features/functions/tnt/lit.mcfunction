scoreboard players add @s m_tnt_stage 1
execute if score @s m_tnt_stage matches 60 run function crazy_features:tnt/explode
execute at @e[tag=m_e_tnt,limit=1,sort=nearest] run tp @s ~ ~ ~
