scoreboard players add @s m_attackTimer3 1
execute if score @s m_attackTimer3 matches 2 run function crazy_features:demon/scream/attack_init


execute if score @s m_attackTimer3 matches 18 run particle minecraft:large_smoke ^ ^2.2 ^1 0 0 0 0.1 10 force


execute if score @s m_attackTimer3 matches 15 at @s positioned ^ ^2.3 ^0.5 run summon marker ~ ~ ~ {NoGravity:1,Tags:["md_scream","md_scream1"]}
execute if score @s m_attackTimer3 matches 15 at @s positioned ^ ^ ^4 run tag @a[distance=..30] add md_rotate_target
execute if score @s m_attackTimer3 matches 15 run execute as @e[type=marker,tag=md_scream1] at @s run tp @s ~ ~ ~ facing entity @p[tag=md_rotate_target]
execute if score @s m_attackTimer3 matches 15 run execute as @e[type=marker,tag=md_scream1] at @s run tp @s ~ ~ ~ ~7 ~-4
execute if score @s m_attackTimer3 matches 15 run tag @a[tag=md_rotate_target] remove md_rotate_target
execute if score @s m_attackTimer3 matches 12 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 0.9

execute if score @s m_attackTimer3 matches 20 at @s positioned ^ ^2.3 ^0.5 run summon marker ~ ~ ~ {NoGravity:1,Tags:["md_scream","md_scream2"]}
execute if score @s m_attackTimer3 matches 20 at @s positioned ^ ^ ^4 run tag @a[distance=..30] add md_rotate_target
execute if score @s m_attackTimer3 matches 20 run execute as @e[type=marker,tag=md_scream2] at @s run tp @s ~ ~ ~ facing entity @p[tag=md_rotate_target]
execute if score @s m_attackTimer3 matches 20 run execute as @e[type=marker,tag=md_scream2] at @s run tp @s ~ ~ ~ ~-7 ~-4
execute if score @s m_attackTimer3 matches 20 run tag @a[tag=md_rotate_target] remove md_rotate_target
execute if score @s m_attackTimer3 matches 17 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 0.9


execute if score @s m_attackTimer3 matches 25 at @s positioned ^ ^2.3 ^0.5 run summon marker ~ ~ ~ {NoGravity:1,Tags:["md_scream","md_scream3"]}
execute if score @s m_attackTimer3 matches 25 at @s positioned ^ ^ ^4 run tag @a[distance=..30] add md_rotate_target
execute if score @s m_attackTimer3 matches 25 run execute as @e[type=marker,tag=md_scream3] at @s run tp @s ~ ~ ~ facing entity @p[tag=md_rotate_target]
execute if score @s m_attackTimer3 matches 25 run execute as @e[type=marker,tag=md_scream3] at @s run tp @s ~ ~ ~ ~ ~-4
execute if score @s m_attackTimer3 matches 25 run tag @a[tag=md_rotate_target] remove md_rotate_target
execute if score @s m_attackTimer3 matches 22 run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.5 0.9




execute if score @s m_attackTimer3 matches 47 run function crazy_features:demon/scream/attack_end
