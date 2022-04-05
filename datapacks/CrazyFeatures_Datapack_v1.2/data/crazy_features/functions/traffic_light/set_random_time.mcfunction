summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_1"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_2"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_3"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_4"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_5"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_6"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_7"]}
summon area_effect_cloud ~ ~ ~ {Tags:["m_r","m_r_8"]}

scoreboard players set @e[type=area_effect_cloud,tag=m_r,sort=random,limit=1] m_r 1

execute at @e[type=area_effect_cloud,tag=m_r_1,scores={m_r=1}] run scoreboard players set @s m_tl_timer 31
execute at @e[type=area_effect_cloud,tag=m_r_2,scores={m_r=1}] run scoreboard players set @s m_tl_timer 42
execute at @e[type=area_effect_cloud,tag=m_r_3,scores={m_r=1}] run scoreboard players set @s m_tl_timer 53
execute at @e[type=area_effect_cloud,tag=m_r_4,scores={m_r=1}] run scoreboard players set @s m_tl_timer 64
execute at @e[type=area_effect_cloud,tag=m_r_5,scores={m_r=1}] run scoreboard players set @s m_tl_timer 75
execute at @e[type=area_effect_cloud,tag=m_r_6,scores={m_r=1}] run scoreboard players set @s m_tl_timer 96
execute at @e[type=area_effect_cloud,tag=m_r_7,scores={m_r=1}] run scoreboard players set @s m_tl_timer 127
execute at @e[type=area_effect_cloud,tag=m_r_8,scores={m_r=1}] run scoreboard players set @s m_tl_timer 158
