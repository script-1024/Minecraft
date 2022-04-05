schedule function crazy_features:tick_5t 5t

execute as @e[type=armor_stand,tag=m_tnt,scores={m_tnt_stage=21}] at @s run function crazy_features:tnt/redstone_test

execute as @e[type=armor_stand,tag=m_sp_1] at @s run function crazy_features:tnt/tnt_spawn
execute as @e[type=armor_stand,tag=m_sp_3] at @s run function crazy_features:blue_shell/attempt_spawn
execute as @e[type=armor_stand,tag=m_sp_4] at @s run function crazy_features:traffic_light/spawn
execute as @e[type=armor_stand,tag=m_sp_5] at @s run function crazy_features:rover/summon

execute as @e[type=armor_stand,tag=m_traffic_light] at @s if block ~ ~ ~ #crazy_features:air run function crazy_features:traffic_light/kill
execute as @e[type=armor_stand,tag=m_traffic_light] at @s if block ~ ~-1 ~ #crazy_features:air run function crazy_features:traffic_light/kill
execute as @e[type=armor_stand,tag=m_tnt,scores={m_tnt_stage=..21}] at @s if block ~ ~ ~ #crazy_features:air run function crazy_features:tnt/tnt_kill

execute as @e[type=item] at @s if entity @a[distance=..15] if entity @s[nbt={OnGround:1b,Item:{id:"minecraft:jukebox"}}] if block ~ ~ ~ #minecraft:signs{Text1:'{"text":"heck"}'} run function crazy_features:demon/spawn
