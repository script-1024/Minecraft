scoreboard players remove @s m_tl_timer 1
execute if entity @s[scores={m_tl_timer=15}] as @s at @s positioned ~ ~1.075 ~ run data merge entity @e[tag=m_traffic_light_model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:58}}]}

execute if entity @s[scores={m_tl_timer=..0,m_tl_state=0}] as @s at @s positioned ~ ~1.075 ~ run data merge entity @e[tag=m_traffic_light_model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:57}}]}
execute if entity @s[scores={m_tl_timer=..0,m_tl_state=1}] as @s at @s positioned ~ ~1.075 ~ run data merge entity @e[tag=m_traffic_light_model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:59}}]}
execute if entity @s[scores={m_tl_timer=..0,m_tl_state=0}] run tag @s add m_tl_toggle1
execute if entity @s[scores={m_tl_timer=..0,m_tl_state=1}] run tag @s add m_tl_toggle2
execute if entity @s[tag=m_tl_toggle1,scores={m_tl_timer=..0}] run scoreboard players set @s m_tl_state 1
execute if entity @s[tag=m_tl_toggle2,scores={m_tl_timer=..0}] run scoreboard players set @s m_tl_state 0
execute if entity @s[tag=m_tl_toggle1,scores={m_tl_timer=..0}] as @s at @s positioned ~ ~1.075 ~ run data merge entity @e[tag=m_traffic_light_model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:57}}]}
execute if entity @s[tag=m_tl_toggle2,scores={m_tl_timer=..0}] as @s at @s positioned ~ ~1.075 ~ run data merge entity @e[tag=m_traffic_light_model,limit=1,sort=nearest] {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:59}}]}

execute if entity @s[tag=m_tl_toggle2,scores={m_tl_timer=..0}] as @s at @s positioned ~ ~1.075 ~ run playsound minecraft:red_light master @a ~ ~ ~ 1.5 1.0
execute if entity @s[tag=m_tl_toggle1,scores={m_tl_timer=..0}] as @s at @s positioned ~ ~1.075 ~ run playsound minecraft:green_light master @a ~ ~ ~ 1.5 1.0

execute if entity @s[scores={m_tl_timer=..0}] run tag @s remove m_tl_toggle1
execute if entity @s[scores={m_tl_timer=..0}] run tag @s remove m_tl_toggle2
execute if entity @s[scores={m_tl_timer=..0}] as @s run function crazy_features:traffic_light/set_random_time


execute as @s at @s positioned ^ ^1 ^2 run tag @a[distance=..2] add m_this_tl_affected
execute as @s at @s positioned ^ ^1 ^4 run tag @a[distance=..4] add m_this_tl_affected
execute as @s at @s positioned ^ ^1 ^6 run tag @a[distance=..5] add m_this_tl_affected
execute as @s at @s positioned ^ ^1 ^8 run tag @a[distance=..6] add m_this_tl_affected
execute as @s at @s positioned ^ ^1 ^10 run tag @a[distance=..7] add m_this_tl_affected
execute as @s at @s positioned ^ ^1 ^12 run tag @a[distance=..8] add m_this_tl_affected

execute as @s at @s if entity @s[scores={m_tl_state=0}] positioned ^ ^1 ^12 run particle dust 1 0 0 1.5 ~ ~ ~ 4 3 4 0.1 1
execute as @s at @s if entity @s[scores={m_tl_state=1}] positioned ^ ^1 ^12 run particle dust 0 1 0 1.5 ~ ~ ~ 4 3 4 0.1 1


execute if entity @s[scores={m_tl_state=0}] run tag @a[tag=m_this_tl_affected] add m_tl_red
execute if entity @s[scores={m_tl_state=1}] run tag @a[tag=m_this_tl_affected] add m_tl_green
tag @a[tag=m_this_tl_affected] add m_tl_affected
tag @a[tag=m_this_tl_affected] remove m_this_tl_affected

scoreboard players set @a[tag=m_tl_affected] m_in_light 2
