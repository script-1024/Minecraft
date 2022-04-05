scoreboard players add @s m_shark_jump 1
execute if score @s m_shark_jump matches 10.. run scoreboard players add @s m_shark_rot 7
execute at @s store result entity @s Pose.Head[0] float 1 run scoreboard players get @s m_shark_rot
execute at @s if score @s m_shark_jump matches 1 at @s run execute at @s store result entity @s Rotation[0] float 1 run data get entity @e[scores={m_shark_jmp_prep=1..},limit=1,sort=nearest] Rotation[0] 1
execute at @s if score @s m_shark_jump matches 1 at @s run tp @s ^ ^-1 ^1 ~180 ~
execute at @s if score @s m_shark_jump matches 9..10 run particle minecraft:splash ^ ^1 ^-1.8 0.2 0.2 0.2 0.1 30 force
execute at @s if score @s m_shark_jump matches 29..30 run particle minecraft:splash ^ ^1 ^1.5 0.2 0.2 0.2 0.1 30 force

execute if score @s m_shark_jump matches 10 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:62}}]}
execute at @s if score @s m_shark_jump matches 11..20 run tp @s ~ ~0.08 ~
execute at @s if score @s m_shark_jump matches 21..30 run tp @s ~ ~-0.08 ~

execute at @s if score @s m_shark_jump matches 10..11 run tp @s ~ ~0.8 ~
execute at @s if score @s m_shark_jump matches 28..30 run tp @s ~ ~-0.2 ~
execute at @s if score @s m_shark_jump matches 25..30 run tp @s ~ ~-0.2 ~
execute at @s if score @s m_shark_jump matches 22..30 run tp @s ~ ~-0.05 ~

execute if score @s m_shark_jump matches 35 run kill @s



execute at @s if score @s m_shark_jump matches 5 run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 3.0 0.7
execute at @s if score @s m_shark_jump matches 15 run kill @e[tag=!m_nokill,type=#mobs,distance=..2]
execute at @s if score @s m_shark_jump matches 15 run kill @a[distance=..2]
