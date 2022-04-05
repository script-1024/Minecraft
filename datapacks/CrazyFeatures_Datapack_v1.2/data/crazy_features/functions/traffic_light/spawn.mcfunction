
fill ~ ~ ~ ~ ~3 ~ barrier



execute as @s[tag=m_sp_4] at @s run tag @p add m_placer4

scoreboard players set @a[tag=m_placer4,distance=..10,y_rotation=-45..45] m_p_rot 1
scoreboard players set @a[tag=m_placer4,distance=..10,y_rotation=46..135] m_p_rot 2
scoreboard players set @a[tag=m_placer4,distance=..10,y_rotation=135..180] m_p_rot 3
scoreboard players set @a[tag=m_placer4,distance=..10,y_rotation=-180..-135] m_p_rot 3
scoreboard players set @a[tag=m_placer4,distance=..10,y_rotation=-134..-46] m_p_rot 4

execute as @a[tag=m_placer4,scores={m_p_rot=1}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~1.075 ~ {NoGravity:1,Tags:["m_traffic_light_model"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:59}}],Rotation:[180f]}
execute as @a[tag=m_placer4,scores={m_p_rot=2}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~1.075 ~ {NoGravity:1,Tags:["m_traffic_light_model"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:59}}],Rotation:[-90f]}
execute as @a[tag=m_placer4,scores={m_p_rot=3}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~1.075 ~ {NoGravity:1,Tags:["m_traffic_light_model"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:59}}],Rotation:[0f]}
execute as @a[tag=m_placer4,scores={m_p_rot=4}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~1.075 ~ {NoGravity:1,Tags:["m_traffic_light_model"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:59}}],Rotation:[90f]}

execute as @a[tag=m_placer4,scores={m_p_rot=1}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_traffic_light","m_traffic_light_init"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[180f]}
execute as @a[tag=m_placer4,scores={m_p_rot=2}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_traffic_light","m_traffic_light_init"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[-90f]}
execute as @a[tag=m_placer4,scores={m_p_rot=3}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_traffic_light","m_traffic_light_init"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[0f]}
execute as @a[tag=m_placer4,scores={m_p_rot=4}] at @s run execute as @e[tag=m_sp_4,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_traffic_light","m_traffic_light_init"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[90f]}

scoreboard players set @e[tag=m_traffic_light_init] m_tl_timer 60
scoreboard players set @e[tag=m_traffic_light_init] m_tl_state 0

tag @e[tag=m_traffic_light_init] remove m_traffic_light_init

kill @s
