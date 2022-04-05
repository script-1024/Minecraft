scoreboard players add @s m_scream_proj_lt 1

execute at @s run tp @s ^ ^ ^0.5
execute at @s run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 1 0.3 ~ ~ ~ 0 0 0 0.05 2 force
execute at @s positioned ~ ~-0.3 ~ run execute as @a[distance=..1.5] run function crazy_features:demon/blood
execute at @s positioned ~ ~-0.3 ~ run execute as @a[distance=..1.5] run function crazy_features:player/dmg/7
execute at @s positioned ~ ~-0.3 ~ if entity @a[distance=..1.5] run kill @s

execute at @s run tp @s ^ ^ ^0.5
execute at @s run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 1 0.3 ~ ~ ~ 0 0 0 0.05 2 force
execute at @s positioned ~ ~-0.3 ~ run execute as @a[distance=..1.5] run function crazy_features:player/dmg/7
execute at @s positioned ~ ~-0.3 ~ run execute as @a[distance=..1.5] run function crazy_features:demon/blood
execute at @s positioned ~ ~-0.3 ~ if entity @a[distance=..1.5] run kill @s

execute at @s run tp @s ^ ^ ^0.5
execute at @s run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 1 0.3 ~ ~ ~ 0 0 0 0.05 2 force
execute at @s positioned ~ ~-0.3 ~ run execute as @a[distance=..1.5] run function crazy_features:player/dmg/7
execute at @s positioned ~ ~-0.3 ~ run execute as @a[distance=..1.5] run function crazy_features:demon/blood
execute at @s positioned ~ ~-0.3 ~ if entity @a[distance=..1.5] run kill @s


execute at @s unless block ~ ~ ~ #crazy_features:passable run kill @s

execute if score @s m_scream_proj_lt matches 60.. run kill @s


#execute at @s run particle minecraft:dust_color_transition 1 0.2 0.2 1 0.5 0.5 1 ~ ~ ~ 0 0 0 0.05 10 force
#execute at @s run particle minecraft:dust_color_transition 1 0.2 0.2 1 1 1 0.5 ~ ~ ~ 0 0 0 0.05 10 force
#execute at @s run particle firework ~ ~ ~ 0 0 0 0.01 1 force
