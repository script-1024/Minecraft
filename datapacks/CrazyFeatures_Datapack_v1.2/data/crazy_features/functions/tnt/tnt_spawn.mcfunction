execute as @s[tag=m_sp_1] at @s run tag @p add m_placer

scoreboard players set @a[tag=m_placer,distance=..10,y_rotation=-45..45] m_p_rot 1
scoreboard players set @a[tag=m_placer,distance=..10,y_rotation=46..135] m_p_rot 2
scoreboard players set @a[tag=m_placer,distance=..10,y_rotation=135..180] m_p_rot 3
scoreboard players set @a[tag=m_placer,distance=..10,y_rotation=-180..-135] m_p_rot 3
scoreboard players set @a[tag=m_placer,distance=..10,y_rotation=-134..-46] m_p_rot 4

setblock ~ ~ ~ barrier

execute as @a[tag=m_placer,scores={m_p_rot=1}] at @s run execute as @e[tag=m_sp_1,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:1}}],Rotation:[-90f]}
execute as @a[tag=m_placer,scores={m_p_rot=2}] at @s run execute as @e[tag=m_sp_1,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:1}}],Rotation:[0f]}
execute as @a[tag=m_placer,scores={m_p_rot=3}] at @s run execute as @e[tag=m_sp_1,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:1}}],Rotation:[90f]}
execute as @a[tag=m_placer,scores={m_p_rot=4}] at @s run execute as @e[tag=m_sp_1,limit=1,sort=nearest] at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:1}}],Rotation:[180f]}


execute as @e[tag=m_tnt,limit=1,sort=nearest] at @s positioned ^0.3125 ^ ^-0.188 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt_slot_3"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[0f]}
execute as @e[tag=m_tnt,limit=1,sort=nearest] at @s positioned ^0.3125 ^ ^ run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt_slot_2"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[0f]}
execute as @e[tag=m_tnt,limit=1,sort=nearest] at @s positioned ^0.3125 ^ ^0.188 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Tags:["m_tnt_slot_1"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,Rotation:[0f]}

summon villager ~0.3 ~-2 ~ {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_tnt_vil","m_invis","m_tnt_vil_init"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}
summon villager ~-0.3 ~-2 ~ {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_tnt_vil","m_invis","m_tnt_vil_init"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}
summon villager ~ ~-2 ~0.3 {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_tnt_vil","m_invis","m_tnt_vil_init"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}
summon villager ~ ~-2 ~-0.3 {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_tnt_vil","m_invis","m_tnt_vil_init"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}
summon villager ~ ~-2 ~ {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_tnt_vil","m_invis","m_tnt_vil_init"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}

execute as @a unless predicate crazy_features:rightclick run scoreboard players add @e[tag=m_tnt,limit=1,sort=nearest] m_tnt_stage 0
tag @a[tag=m_placer] remove m_placer
tag @a[tag=m_tnt_vil_init] remove m_placer
execute as @s at @s positioned ~ ~-2 ~ run execute as @e[tag=m_tnt_vil_init,limit=5,sort=nearest,distance=..1] at @s run tp @s ~ ~2 ~
kill @s[tag=m_sp_1]
