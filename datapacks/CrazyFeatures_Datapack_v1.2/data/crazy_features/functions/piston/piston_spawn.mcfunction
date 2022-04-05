execute as @e[tag=m_piston_old] at @s run tag @e[tag=m_sp_2] add m_sp_2b
execute as @e[tag=m_piston_old] at @s run tag @e[tag=m_sp_2] remove m_sp_2


execute as @e[tag=m_piston_head] at @s positioned ^1 ^ ^ run tag @e[tag=m_sp_2b,distance=..0.51,limit=1,sort=nearest] add m_sp_2d
execute as @e[tag=m_piston_head] at @s positioned ^-1 ^ ^ run tag @e[tag=m_sp_2b,distance=..0.51,limit=1,sort=nearest] add m_sp_2d
execute as @e[tag=m_piston_head] at @s positioned ^ ^1 ^ run tag @e[tag=m_sp_2b,distance=..0.51,limit=1,sort=nearest] add m_sp_2d
execute as @e[tag=m_piston_head] at @s positioned ^ ^-1 ^ run tag @e[tag=m_sp_2b,distance=..0.51,limit=1,sort=nearest] add m_sp_2d
execute as @e[tag=m_piston_head] at @s positioned ^ ^ ^-1 run tag @e[tag=m_sp_2b,distance=..0.51,limit=1,sort=nearest] add m_sp_2d
tag @e[tag=m_sp_2d] remove m_sp_2b


execute as @s[tag=m_sp_2] at @s run tag @p add m_placer2
scoreboard players set @a[tag=m_placer2,distance=..10,y_rotation=-45..45] m_p_rot 1
scoreboard players set @a[tag=m_placer2,distance=..10,y_rotation=46..135] m_p_rot 2
scoreboard players set @a[tag=m_placer2,distance=..10,y_rotation=135..180] m_p_rot 3
scoreboard players set @a[tag=m_placer2,distance=..10,y_rotation=-180..-135] m_p_rot 3
scoreboard players set @a[tag=m_placer2,distance=..10,y_rotation=-134..-46] m_p_rot 4

execute as @s[tag=m_sp_2] at @s run setblock ~ ~ ~ pink_stained_glass

scoreboard players set @a[tag=m_placer2,x_rotation=60..90] m_p_rot 5
scoreboard players set @a[tag=m_placer2,x_rotation=-90..-60] m_p_rot 6
execute as @a[tag=m_placer2,scores={m_p_rot=1}] at @s run execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_head","m_piston","m_piston_rot1","m_piston_ancient","m_p_init","m_pistonhead_side"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:18}}],Rotation:[180f]}
execute as @a[tag=m_placer2,scores={m_p_rot=2}] at @s run execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_head","m_piston","m_piston_rot2","m_piston_ancient","m_p_init","m_pistonhead_side"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:18}}],Rotation:[270f]}
execute as @a[tag=m_placer2,scores={m_p_rot=3}] at @s run execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_head","m_piston","m_piston_rot3","m_piston_ancient","m_p_init","m_pistonhead_side"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:18}}],Rotation:[0f]}
execute as @a[tag=m_placer2,scores={m_p_rot=4}] at @s run execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_head","m_piston","m_piston_rot4","m_piston_ancient","m_p_init","m_pistonhead_side"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:18}}],Rotation:[90f]}
execute as @a[tag=m_placer2,scores={m_p_rot=5}] at @s run execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_head","m_piston","m_piston_rot5","m_piston_ancient","m_p_init","m_pistonhead_up"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:30}}],Rotation:[0f,-90f]}
execute as @a[tag=m_placer2,scores={m_p_rot=6}] at @s run execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_head","m_piston","m_piston_rot6","m_piston_ancient","m_p_init","m_pistonhead_down"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:31}}],Rotation:[0f,90f]}

execute as @e[tag=m_piston_head,tag=m_p_init,limit=1,sort=nearest] at @s run function crazy_features:piston/piston_id

execute as @e[tag=m_sp_2_s] at @s run tag @e[tag=m_piston_head,tag=m_p_init,limit=1,sort=nearest] add m_p_sticky


execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,tag=m_piston_rot1,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_old","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[180f]}
execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,tag=m_piston_rot2,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_old","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[-90f]}
execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,tag=m_piston_rot3,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_old","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[0f]}
execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,tag=m_piston_rot4,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_old","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[90f]}
execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,tag=m_piston_rot5,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_old","m_piston_up","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:33}}],Rotation:[0f,-90f]}
execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,tag=m_piston_rot6,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_old","m_piston_down","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:34}}],Rotation:[0f,90f]}



execute as @e[tag=m_sp_2,limit=1,sort=nearest] at @s run execute as @e[type=armor_stand,tag=m_piston_head,limit=1,sort=nearest] at @s positioned ^ ^ ^1 run setblock ~ ~ ~ barrier


execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~ ~1 if block ~ ~ ~ #crazy_features:air run tag @e[tag=m_sp_2b,distance=..0.1] add m_sp_2c
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~ ~-1 if block ~ ~ ~ #crazy_features:air run tag @e[tag=m_sp_2b,distance=..0.1] add m_sp_2c
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~1 ~ ~ if block ~ ~ ~ #crazy_features:air run tag @e[tag=m_sp_2b,distance=..0.1] add m_sp_2c
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~-1 ~ ~ if block ~ ~ ~ #crazy_features:air run tag @e[tag=m_sp_2b,distance=..0.1] add m_sp_2c
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~1 ~ if block ~ ~ ~ #crazy_features:air run tag @e[tag=m_sp_2b,distance=..0.1] add m_sp_2c
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~-1 ~ if block ~ ~ ~ #crazy_features:air run tag @e[tag=m_sp_2b,distance=..0.1] add m_sp_2c
execute as @a if predicate crazy_features:rightclick run kill @e[tag=m_sp]


execute as @s at @s if entity @s[tag=m_sp_2] run scoreboard players add @e[tag=m_piston_head,limit=1,sort=nearest] m_piston_length 1
execute as @s at @s if entity @s[tag=m_sp_2c] run scoreboard players add @e[tag=m_piston_head,limit=1,sort=nearest] m_piston_length 1

execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~1 ~ ~ if entity @e[tag=m_sp_2c,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_new","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[-90f]}
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~-1 ~ ~ if entity @e[tag=m_sp_2c,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_new","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[90f]}
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~ ~1 if entity @e[tag=m_sp_2c,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_new","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[0f]}
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~ ~-1 if entity @e[tag=m_sp_2c,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_new","m_piston_side","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:32}}],Rotation:[180f]}
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~1 ~ if entity @e[tag=m_sp_2c,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_new","m_piston_up","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:33}}],Rotation:[0f,-90f]}
execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s positioned ~ ~-1 ~ if entity @e[tag=m_sp_2c,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_piston_ext","m_piston","m_piston_new","m_piston_down","m_p_init"],Silent:1,Marker:1b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:34}}],Rotation:[0f,90f]}

execute as @e[tag=m_piston_ext,tag=m_p_init,limit=1,sort=nearest] at @s run scoreboard players operation @s m_pistonID = @e[tag=m_piston_head,sort=nearest,limit=1] m_pistonID
execute as @e[tag=m_sp_2_s] at @s run tag @e[tag=m_piston_ext,tag=m_p_init,limit=1,sort=nearest] add m_p_sticky
execute as @e[tag=m_sp_2_s] at @s run execute as @e[tag=m_p_init,tag=m_piston_ext,tag=m_piston_side] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:41}}]}
execute as @e[tag=m_sp_2_s] at @s run execute as @e[tag=m_p_init,tag=m_piston_ext,tag=m_piston_up] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:42}}]}
execute as @e[tag=m_sp_2_s] at @s run execute as @e[tag=m_p_init,tag=m_piston_ext,tag=m_piston_down] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:43}}]}

execute if entity @s[tag=m_sp_2] as @e[tag=m_piston_head,limit=1,sort=nearest] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_piston_head,limit=1,sort=nearest,distance=..0.1] m_pistonID run scoreboard players add @s m_piston_order 1
execute if entity @s[tag=m_sp_2c] as @e[tag=m_piston_head,limit=1,sort=nearest] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_piston_head,limit=1,sort=nearest,distance=..0.1] m_pistonID run scoreboard players add @s m_piston_order 1


execute as @s[type=armor_stand,tag=m_sp_2c] at @s run execute as @e[tag=m_piston_old,limit=1,sort=nearest] at @s run function crazy_features:piston/set_extension_type

execute as @s[type=armor_stand,tag=m_sp_2c] at @s run tag @s remove m_sp_2b
execute as @s[type=armor_stand,tag=m_sp_2b] at @s run particle large_smoke ~ ~0.5 ~ 0 0 0 0.1 5 force
execute as @s[type=armor_stand,tag=m_sp_2b] at @s run playsound minecraft:block.fire.extinguish master @a


execute as @s[type=armor_stand,tag=m_sp_2c] at @s run setblock ~ ~ ~ barrier

execute as @s[type=armor_stand,tag=m_sp_2c] at @s run execute as @e[type=armor_stand,tag=m_piston_ancient,limit=1,sort=nearest] at @s run tag @s remove m_piston_ancient
execute as @s[type=armor_stand,tag=m_sp_2c] at @s run execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s run tag @s add m_piston_ancient
execute as @s[type=armor_stand,tag=m_sp_2c] at @s run execute as @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest] at @s run tag @s remove m_piston_old
execute as @s[type=armor_stand,tag=m_sp_2c] at @s run execute as @e[type=armor_stand,tag=m_piston_new,limit=1,sort=nearest] at @s run tag @s add m_piston_old
execute as @s[type=armor_stand,tag=m_sp_2c] at @s run execute as @e[type=armor_stand,tag=m_piston_new,limit=1,sort=nearest] at @s run tag @s remove m_piston_new





#confirm
execute as @s[tag=m_sp_2d] at @s as @e[tag=m_piston_head,limit=1,sort=nearest,distance=..2] run function crazy_features:piston/confirm_piston
execute as @e[tag=m_piston_head,limit=1,sort=nearest] if score @s m_piston_length >= settings maxPistonLength run function crazy_features:piston/confirm_piston





scoreboard players add @e[tag=m_piston_head] m_block_state 0


tag @e[tag=m_p_init] remove m_p_init
tag @a remove m_placer2
kill @s
