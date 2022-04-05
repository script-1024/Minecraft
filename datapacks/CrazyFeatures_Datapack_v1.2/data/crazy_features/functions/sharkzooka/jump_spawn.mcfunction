summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1,NoGravity:1,Tags:["shark_jump_init","shark_jump"],Silent:1,Pose:{Head:[0.001f,0.001f,0.001f]},Small:1}
execute as @e[type=armor_stand,tag=shark_jump_init] at @s if block ~ ~-1 ~ #crazy_features:passable run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,tag=shark_jump_init] at @s if block ~ ~-1 ~ #crazy_features:passable run tp @s ~ ~-1 ~
execute as @e[type=armor_stand,tag=shark_jump_init] at @s if block ~ ~-0.5 ~ #crazy_features:passable run tp @s ~ ~-0.5 ~
execute as @e[type=armor_stand,tag=shark_jump_init] at @s if block ~ ~-0.25 ~ #crazy_features:passable run tp @s ~ ~-0.25 ~
execute as @e[type=armor_stand,tag=shark_jump_init] at @s if block ~ ~-0.125 ~ #crazy_features:passable run tp @s ~ ~-0.125 ~
scoreboard players set @e[tag=shark_jump_init] m_shark_rot -90
tag @e[type=armor_stand,tag=shark_jump_init] remove shark_jump_init
playsound minecraft:sharkzooka_splash master @a ~ ~ ~ 2.0 1.0
