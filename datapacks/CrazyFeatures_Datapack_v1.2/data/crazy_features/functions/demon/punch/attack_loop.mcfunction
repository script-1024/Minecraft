scoreboard players add @s m_attackTimer1 1
execute if score @s m_attackTimer1 matches 2 run function crazy_features:demon/punch/attack_init
execute if score @s m_attackTimer1 matches 12 at @s positioned ^ ^0.5 ^2 run execute as @a[distance=..2.5,tag=!mb_punch_hit] at @s run function crazy_features:demon/punch/hit

execute if score @s m_attackTimer1 matches 7 if score @s m_variant_punch matches 0 run playsound minecraft:demon_punch1 master @a ~ ~ ~ 0.2 1.0
execute if score @s m_attackTimer1 matches 7 if score @s m_variant_punch matches 1 run playsound minecraft:demon_punch2 master @a ~ ~ ~ 0.2 1.0

execute if score @s m_attackTimer1 matches 28 run function crazy_features:demon/punch/attack_end
