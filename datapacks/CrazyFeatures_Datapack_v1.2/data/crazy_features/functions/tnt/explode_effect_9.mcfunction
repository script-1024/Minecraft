
execute if entity @s[scores={m_eff_9_lvl=1}] run particle block cobweb ~ ~0.5 ~ 2 1 2 0.1 50 force
execute if entity @s[scores={m_eff_9_lvl=2}] run particle block cobweb ~ ~0.5 ~ 5 2 5 0.1 100 force
execute if entity @s[scores={m_eff_9_lvl=3}] run particle block cobweb ~ ~0.5 ~ 7 3 7 0.1 200 force

setblock ~ ~ ~ cobweb


execute if entity @s[scores={m_eff_9_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}

execute if entity @s[scores={m_eff_9_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}

execute if entity @s[scores={m_eff_9_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}
execute if entity @s[scores={m_eff_9_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e9_spread"]}


execute if entity @s[scores={m_eff_9_lvl=1}] run spreadplayers ~ ~ 2 4 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb

execute if entity @s[scores={m_eff_9_lvl=2}] run spreadplayers ~ ~ 4 10 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb
execute if entity @s[scores={m_eff_9_lvl=2}] run spreadplayers ~ ~ 4 10 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb
execute if entity @s[scores={m_eff_9_lvl=2}] run spreadplayers ~ ~ 4 10 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb

execute if entity @s[scores={m_eff_9_lvl=3}] run spreadplayers ~ ~ 6 20 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb
execute if entity @s[scores={m_eff_9_lvl=3}] run spreadplayers ~ ~ 6 20 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb
execute if entity @s[scores={m_eff_9_lvl=3}] run spreadplayers ~ ~ 6 20 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb
execute if entity @s[scores={m_eff_9_lvl=3}] run spreadplayers ~ ~ 6 20 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb
execute if entity @s[scores={m_eff_9_lvl=3}] run spreadplayers ~ ~ 6 20 false @e[tag=m_tnt_e9_spread]
execute as @e[type=armor_stand,tag=m_tnt_e9_spread] at @s run setblock ~ ~ ~ cobweb


kill @e[tag=m_tnt_e9_spread]
