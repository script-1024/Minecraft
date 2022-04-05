function wasd:mounted
execute if score .a wasd matches 1 run execute as @e[type=armor_stand,tag=aj.rover.root_entity,limit=1,sort=nearest,distance=..0.1] at @s run tp @s ~ ~ ~ ~-2 ~
execute if score .d wasd matches 1 run execute as @e[type=armor_stand,tag=aj.rover.root_entity,limit=1,sort=nearest,distance=..0.1] at @s run tp @s ~ ~ ~ ~2 ~
execute if score .w wasd matches 1 run execute as @e[type=armor_stand,tag=aj.rover.root_entity,limit=1,sort=nearest,distance=..0.1] at @s run function crazy_features:rover/drive_forward
execute if score .s wasd matches 1 run execute as @e[type=armor_stand,tag=aj.rover.root_entity,limit=1,sort=nearest,distance=..0.1] at @s run function crazy_features:rover/drive_backwards

execute if entity @s[scores={m_talk=1..}] at @s positioned ^ ^ ^1.4 if entity @e[type=villager,tag=m_r_vil1,distance=..0.5] run execute as @e[type=armor_stand,tag=aj.rover.root_entity,limit=1,sort=nearest] at @s run function crazy_features:rover/press_drill
execute if entity @s[scores={m_talk=1..}] at @s positioned ^ ^ ^0.7 if entity @e[type=villager,tag=m_r_vil2,distance=..0.6] run execute as @e[type=armor_stand,tag=aj.rover.root_entity,limit=1,sort=nearest] at @s run function crazy_features:rover/press_claw
