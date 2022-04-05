
execute if entity @s[scores={m_eff_4_lvl=1}] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
execute if entity @s[scores={m_eff_4_lvl=2}] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.2 50 force
execute if entity @s[scores={m_eff_4_lvl=3}] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0.3 100 force
execute if entity @s[scores={m_eff_4_lvl=1}] run particle minecraft:large_smoke ~ ~ ~ 1 1 1 0.1 5 force
execute if entity @s[scores={m_eff_4_lvl=2}] run particle minecraft:large_smoke ~ ~ ~ 1.5 1 1.5 0.1 20 force
execute if entity @s[scores={m_eff_4_lvl=3}] run particle minecraft:large_smoke ~ ~ ~ 2 1 2 0.1 40 force

setblock ~ ~ ~ fire

execute if entity @s[scores={m_eff_4_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=1..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}

execute if entity @s[scores={m_eff_4_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=2..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}

execute if entity @s[scores={m_eff_4_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}
execute if entity @s[scores={m_eff_4_lvl=3..}] run summon armor_stand ~ ~ ~ {NoGravity:1,Marker:1,Invisible:1,Tags:["m_tnt_e4_spread"]}


execute if entity @s[scores={m_eff_4_lvl=1}] run spreadplayers ~ ~ 2 5 false @e[tag=m_tnt_e4_spread]
execute if entity @s[scores={m_eff_4_lvl=2}] run spreadplayers ~ ~ 3 15 false @e[tag=m_tnt_e4_spread]
execute if entity @s[scores={m_eff_4_lvl=3}] run spreadplayers ~ ~ 4 30 false @e[tag=m_tnt_e4_spread]
execute as @e[type=armor_stand,tag=m_tnt_e4_spread] at @s run setblock ~ ~ ~ fire
execute if entity @s[scores={m_eff_4_lvl=1}] run spreadplayers ~ ~ 2 5 false @e[tag=m_tnt_e4_spread]
execute if entity @s[scores={m_eff_4_lvl=2}] run spreadplayers ~ ~ 3 15 false @e[tag=m_tnt_e4_spread]
execute if entity @s[scores={m_eff_4_lvl=3}] run spreadplayers ~ ~ 4 30 false @e[tag=m_tnt_e4_spread]
execute as @e[type=armor_stand,tag=m_tnt_e4_spread] at @s run setblock ~ ~ ~ fire
execute if entity @s[scores={m_eff_4_lvl=2}] run spreadplayers ~ ~ 3 15 false @e[tag=m_tnt_e4_spread]
execute if entity @s[scores={m_eff_4_lvl=3}] run spreadplayers ~ ~ 4 30 false @e[tag=m_tnt_e4_spread]
execute as @e[type=armor_stand,tag=m_tnt_e4_spread] at @s run setblock ~ ~ ~ fire
execute if entity @s[scores={m_eff_4_lvl=3}] run spreadplayers ~ ~ 3 30 false @e[tag=m_tnt_e4_spread]
execute as @e[type=armor_stand,tag=m_tnt_e4_spread] at @s run setblock ~ ~ ~ fire
execute if entity @s[scores={m_eff_4_lvl=3}] run spreadplayers ~ ~ 3 30 false @e[tag=m_tnt_e4_spread]
execute as @e[type=armor_stand,tag=m_tnt_e4_spread] at @s run setblock ~ ~ ~ fire
execute if entity @s[scores={m_eff_4_lvl=3}] run spreadplayers ~ ~ 3 30 false @e[tag=m_tnt_e4_spread]
execute as @e[type=armor_stand,tag=m_tnt_e4_spread] at @s run setblock ~ ~ ~ fire
kill @e[tag=m_tnt_e4_spread]
