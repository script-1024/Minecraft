#STRAIGHT LINES
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:19}}]}
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:20}}]}
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:27}}]}

execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id1
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id2
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^ ^1 if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id3





# STRAIGHT TO SIDE (LEFT & RIGHT)
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:21}}]}
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^-1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:22}}]}

execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id4
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^-1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id5





#STRAIGHT TO UP/DOWN
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:23}}]}
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:25}}]}

execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id6
execute if entity @s[tag=m_piston_side] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id7






#UP TO STRAIGHT
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:24}}],Rotation:[0f,-90f]}
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:24}}],Rotation:[180f,-90f]}
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:24}}],Rotation:[90f,-90f]}
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^-1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:24}}],Rotation:[-90f,-90f]}

execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id8
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id8
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id8
execute if entity @s[tag=m_piston_up] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^-1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id8




#DOWN TO STRAIGHT
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:26}}],Rotation:[0f,90f]}
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:26}}],Rotation:[-180f,90f]}
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:26}}],Rotation:[90f,90f]}
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^-1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:26}}],Rotation:[-90f,90f]}

execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^-1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id9
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^ ^1 ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id9
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id9
execute if entity @s[tag=m_piston_down] as @s at @s positioned ^ ^ ^-1 if entity @e[type=armor_stand,tag=m_piston_ancient,distance=..0.1] at @s positioned ^-1 ^ ^ if entity @e[type=armor_stand,tag=m_piston_new,distance=..0.1] run tag @s add m_piston_id9









#
