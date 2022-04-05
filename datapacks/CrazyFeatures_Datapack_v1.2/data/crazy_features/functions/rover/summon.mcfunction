
execute positioned ~ ~0.0 ~ run function rover:summon_model/door_closed
summon villager ~0.3 ~-2 ~ {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_r_vil","invis","m_r_vil1","new","m_nokill"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}
summon villager ~0.3 ~-2 ~ {NoGravity:1b,Team:"nocoll",Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Health:99999f,Tags:["m_r_vil","invis","m_r_vil2","new","m_nokill"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1980,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:99999}],Offers:{}}
execute as @e[type=villager,tag=m_r_vil,limit=2,tag=new,sort=nearest,distance=..1] at @s run tp @s ~ ~2 ~

scoreboard players set @e[type=villager,tag=new,tag=m_r_vil] m_grab_block 1
scoreboard players set @e[type=horse,tag=new,tag=m_rover_seat] m_grab_block 1
effect give @e[type=horse,tag=new,tag=m_rover_seat] resistance 999999 240 true

scoreboard players operation @e[tag=new] aj.id = @e[tag=aj.rover.root_entity,tag=!m_rover_init] aj.id
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] attackTimer1 0
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] attackTimer2 0
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] attack1_cd 0
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] attack2_cd 0
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] m_drill_state 0
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] m_claw_state 0
scoreboard players add @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] m_r_anim_stop 0

execute as @e[type=armor_stand,tag=aj.rover.root_entity,tag=!m_rover_init] at @s run function rover:animations/animation.rover.idle/start
execute as @a if predicate crazy_features:rightclick run kill @e[type=armor_stand]

tag @e[tag=aj.mrbeast_lion.root_entity,tag=!m_rover_init] add m_rover_init
tag @e[tag=new] remove new

kill @s

title @a[distance=..5] actionbar [{"text":"[!]","color":"dark_red"},{"text":" Drop a stack of tnt to remove!","color":"gold"}]
title @a[distance=..5] times 5 10 5
