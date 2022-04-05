
#GENERAL
execute at @s unless entity @s[tag=m_isDead] run execute as @e[type=zombie,tag=md_boss_ai,distance=..1] if score @s aj.id = @e[type=armor_stand,tag=aj.demon.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id run tp @e[type=armor_stand,tag=aj.demon.root_entity,distance=..0.1,limit=1,sort=nearest] @s
execute at @s run tp @s ~ ~ ~ ~ 0
execute at @s run execute as @e[type=zombie,tag=md_boss_ai,distance=..0.1,sort=nearest] run function crazy_features:demon/ai_loop


execute at @s unless entity @s[tag=m_isDead,tag=!m_spawnIdle] run execute as @e[type=iron_golem,tag=md_boss_hitbox1,distance=..10] if score @s aj.id = @e[type=armor_stand,tag=aj.demon.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id positioned ^ ^0.7 ^0.3 run tp @s ~ ~ ~
execute at @s unless entity @s[tag=m_isDead,tag=!m_spawnIdle] run execute as @e[type=iron_golem,tag=md_boss_hitbox2,distance=..10] if score @s aj.id = @e[type=armor_stand,tag=aj.demon.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id positioned ^ ^0.3 ^-0.2 run tp @s ~ ~ ~


#HEALTH
execute at @s positioned ~ ~0.5 ~ unless entity @s[tag=m_isDead] run execute at @e[type=iron_golem,tag=md_boss_hitbox,distance=..1,nbt={HurtTime:10s},limit=1] run function crazy_features:demon/damage
execute if entity @s[tag=m_bossDisplay] run execute store result bossbar minecraft:demon_hp value run scoreboard players get @s m_mobHealth

execute at @s as @a[scores={m_death=1..},distance=..30] run tellraw @a ["",{"selector":"@s"}," has been demonetized"]
scoreboard players set @a[distance=..35] m_death 0

#Animations

scoreboard players set @s m_isMoving 1
execute at @s run execute at @e[type=zombie,tag=md_boss_ai,distance=..0.1,sort=nearest,limit=1,scores={m_moveTimer=3..}] run scoreboard players set @s m_isMoving 0

execute as @s[scores={m_damageTimer=1..}] at @s run function crazy_features:demon/damage_timer

execute as @s[scores={m_deathTimer=1..}] at @s run function crazy_features:demon/death/death_loop
execute as @s[scores={m_attackTimer1=1..}] at @s run function crazy_features:demon/punch/attack_loop
execute as @s[scores={m_attackTimer2=1..}] at @s run function crazy_features:demon/slam/attack_loop
execute as @s[scores={m_attackTimer3=1..}] at @s run function crazy_features:demon/scream/attack_loop

execute if entity @s[scores={m_isMoving=1},tag=!m_isDead,tag=!m_isMoving,tag=!m_isAnimating] run function crazy_features:demon/anim_start_walk
execute if entity @s[scores={m_isMoving=0},tag=!m_isDead,tag=m_isMoving,tag=!m_isAnimating] run function crazy_features:demon/anim_start_idle


# Attack Control

scoreboard players remove @s[scores={m_attack1_cd=1..}] m_attack1_cd 1
scoreboard players remove @s[scores={m_attack2_cd=1..}] m_attack2_cd 1
scoreboard players remove @s[scores={m_attack3_cd=1..}] m_attack3_cd 1
execute at @s if entity @s[scores={m_attack2_cd=0,m_attackTimer1=0,m_attackTimer2=0,m_attackTimer3=0},tag=!m_isAnimating,tag=!m_isDead] if entity @a[distance=..3] run scoreboard players set @s m_attackTimer2 1
execute at @s if entity @s[scores={m_attack1_cd=0,m_attackTimer1=0,m_attackTimer2=0,m_attackTimer3=0},tag=!m_isAnimating,tag=!m_isDead] if entity @a[distance=..2] run scoreboard players set @s m_attackTimer1 1
execute at @s if entity @s[scores={m_attack3_cd=0,m_attackTimer1=0,m_attackTimer2=0,m_attackTimer3=0},tag=!m_isAnimating,tag=!m_isDead] if entity @a[distance=5..15] run scoreboard players set @s m_attackTimer3 1
