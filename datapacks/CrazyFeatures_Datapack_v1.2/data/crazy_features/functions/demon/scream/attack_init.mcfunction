scoreboard players set @s m_attack3_cd 100
tag @s add m_isAnimating
function demon:animations/animation.demon.walk/reset
function demon:animations/animation.demon.idle/reset
function demon:animations/animation.demon.scream/start
execute as @e[tag=md_boss_ai,distance=..0.1] run data merge entity @s {NoAI:1}
function crazy_features:demon/rotate_to_closest_player

scoreboard players add @s m_swore_sound 1
scoreboard players set @s[scores={m_swore_sound=3..}] m_swore_sound 0
execute if entity @s[scores={m_swore_sound=0}] run playsound minecraft:swore1 master @a ~ ~ ~ 2.0 1
execute if entity @s[scores={m_swore_sound=1}] run playsound minecraft:swore2 master @a ~ ~ ~ 2.0 1
execute if entity @s[scores={m_swore_sound=2}] run playsound minecraft:swore3 master @a ~ ~ ~ 2.0 1
