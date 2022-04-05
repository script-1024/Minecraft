scoreboard players add @s m_attackTimer2 1
execute if score @s m_attackTimer2 matches 2 run function crazy_features:demon/slam/attack_init
execute if score @s m_attackTimer2 matches 18 at @s positioned ^ ^0.5 ^2 run execute as @a[distance=..3,tag=!md_slam_hit] at @s run function crazy_features:demon/slam/hit
execute if score @s m_attackTimer2 matches 18 at @s positioned ^ ^0.5 ^2 run playsound minecraft:demon_smash master @a ~ ~ ~ 0.4 0.9

execute if score @s m_attackTimer2 matches 18 at @s positioned ^ ^0.5 ^2 run particle block dirt ~ ~ ~ 2 0.5 2 0.1 10 force
execute if score @s m_attackTimer2 matches 18 at @s positioned ^ ^0.5 ^2 run particle block sand ~ ~ ~ 1.5 0.3 1.5 0.1 10 force
execute if score @s m_attackTimer2 matches 18 at @s positioned ^ ^0.5 ^2 run particle block cobblestone ~ ~ ~ 1 0.5 1 0.1 10 force

execute if score @s m_attackTimer2 matches 38 run function crazy_features:demon/slam/attack_end
