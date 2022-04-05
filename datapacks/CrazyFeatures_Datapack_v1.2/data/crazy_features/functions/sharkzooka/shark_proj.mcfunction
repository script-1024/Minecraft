scoreboard players add @s m_shark_lt 1
execute as @s[scores={m_shark_lt=2..199}] at @s run particle splash ~ ~ ~ 0.0 0.0 0.0 1 1 force

execute as @s[tag=shark_init] run execute store result entity @s Rotation[0] float 1 run data get entity @a[nbt={SelectedItem:{id:"minecraft:iron_nugget"}},scores={m_crossbow=1..},limit=1,sort=nearest] Rotation[0] 1
execute as @s[tag=shark_init] run execute store result entity @s Rotation[1] float 1 run data get entity @a[nbt={SelectedItem:{id:"minecraft:iron_nugget"}},scores={m_crossbow=1..},limit=1,sort=nearest] Rotation[1] 1
#execute as @s[tag=shark_init] run execute store result entity @s Pose.Head[1] float 1 run data get entity @a[nbt={SelectedItem:{id:"minecraft:iron_nugget"}},scores={m_crossbow=1..},limit=1,sort=nearest] Rotation[0] 1
tag @s remove shark_init
execute as @s[scores={m_shark_lt=4}] at @s run function crazy_features:sharkzooka/shark_launch
execute as @s[scores={m_shark_lt=7}] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:63}}]}


scoreboard players set @s[nbt={OnGround:1b},scores={m_shark_lt=6..199}] m_shark_lt 202

execute as @s[scores={m_shark_lt=202..204}] at @s run tp @s ~ ~-2 ~
execute as @s[scores={m_shark_lt=202}] at @s run data merge entity @s {NoGravity:1}
execute as @s[scores={m_shark_lt=202}] at @s run particle splash ~ ~2.5 ~ 0.35 0.2 0.35 0.2 30 force
execute as @s[scores={m_shark_lt=202}] at @s run function crazy_features:sharkzooka/jump_targets
execute as @s[scores={m_shark_lt=202}] at @s run playsound minecraft:sharkzooka_bass master @a ~ ~ ~ 2.0 1.0

kill @s[scores={m_shark_lt=200}]
kill @s[scores={m_shark_lt=210..}]

execute as @s[scores={m_shark_lt=7..199}] at @s run execute store result entity @s Pose.Head[0] float 1 run data get entity @s Motion[1] -40


execute as @s[scores={m_shark_lt=7..199},tag=!m_shark_proj_sound] at @s if entity @e[tag=!m_nokill,type=#mobs,distance=..2] run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 2.0 0.7
execute as @s[scores={m_shark_lt=7..199},tag=!m_shark_proj_sound] at @s if entity @a[distance=..2,scores={m_shark_load=-1..0}] run playsound minecraft:entity.phantom.bite master @a ~ ~ ~ 2.0 0.7

execute as @s[scores={m_shark_lt=7..199},tag=!m_shark_proj_sound] at @s if entity @e[tag=!m_nokill,type=#mobs,distance=..2] run tag @s add m_shark_proj_sound
execute as @s[scores={m_shark_lt=7..199},tag=!m_shark_proj_sound] at @s if entity @a[distance=..2,scores={m_shark_load=-1..0}] run tag @s add m_shark_proj_sound

execute as @s[scores={m_shark_lt=7..199}] at @s run kill @a[distance=..2,scores={m_shark_load=-1..0}]
execute as @s[scores={m_shark_lt=7..199}] at @s run kill @e[tag=!m_nokill,type=#mobs,distance=..2]
