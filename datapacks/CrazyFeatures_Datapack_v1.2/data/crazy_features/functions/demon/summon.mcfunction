execute positioned ~ ~0.0 ~ run function demon:summon_model/default
summon zombie ~ ~ ~ {Team:"hitbox",Tags:["invis","md_boss_ai","new","m_nokill"],PersistenceRequired:1,Silent:1b,CustomNameVisible:0b,Health:9999f,IsBaby:1b,CustomName:'{"text":"Demonetizer"}',Attributes:[{Name:generic.max_health,Base:9999},{Name:generic.follow_range,Base:30},{Name:generic.knockback_resistance,Base:0.1},{Name:generic.movement_speed,Base:0.29}],IsBaby:0b,ActiveEffects:[{Id:14b,Amplifier:9b,Duration:999,ShowParticles:0b}]}
summon iron_golem ~ ~ ~ {Team:"hitbox",Tags:["invis","md_boss_hitbox","md_boss_hitbox1","new","m_nokill"],PersistenceRequired:1,Silent:1b,CustomNameVisible:0b,Health:9999f,Attributes:[{Name:generic.max_health,Base:9999},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.0}],IsBaby:0b,ActiveEffects:[{Id:14b,Amplifier:9b,Duration:9999,ShowParticles:0b}],NoAI:1}
summon iron_golem ~ ~ ~ {Team:"hitbox",Tags:["invis","md_boss_hitbox","md_boss_hitbox2","new","m_nokill"],PersistenceRequired:1,Silent:1b,CustomNameVisible:0b,Health:9999f,Attributes:[{Name:generic.max_health,Base:9999},{Name:generic.knockback_resistance,Base:1.0},{Name:generic.movement_speed,Base:0.0}],IsBaby:0b,ActiveEffects:[{Id:14b,Amplifier:9b,Duration:9999,ShowParticles:0b}],NoAI:1}

tag @e[tag=aj.demon.root_entity] remove m_bossDisplay
tag @e[tag=aj.demon.root_entity,tag=!demon_root_init] add m_bossDisplay

scoreboard players operation @e[tag=new] aj.id = @e[tag=aj.demon.root_entity,tag=!demon_root_init] aj.id

scoreboard players set @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_mobHealth 1000
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attackTimer1 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attackTimer2 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attackTimer3 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attackTimer4 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attack1_cd 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attack2_cd 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attack3_cd 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_attack4_cd 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_deathTimer 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_damageTimer 0
scoreboard players add @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] m_variant_punch 0

scoreboard players add @e[tag=md_boss_ai] m_moveTimer 0

execute as @e[type=armor_stand,tag=aj.demon.root_entity,tag=!demon_root_init] at @s run function demon:animations/animation.demon.idle/start
execute as @a if predicate crazy_features:rightclick run kill @e[type=zombie,tag=md_boss_ai]
execute as @a if predicate crazy_features:rightclick run kill @e[type=iron_golem,tag=md_boss_hitbox]
tag @e[tag=aj.demon.root_entity,tag=!demon_root_init] add demon_root_init
tag @e[tag=new] remove new

gamerule showDeathMessages false

kill @s

bossbar set minecraft:demon_hp visible true
bossbar set minecraft:demon_hp players @a
scoreboard players set @a m_death 0
