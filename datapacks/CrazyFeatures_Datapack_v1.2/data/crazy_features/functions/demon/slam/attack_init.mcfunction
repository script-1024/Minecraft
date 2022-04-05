scoreboard players set @s m_attack2_cd 100
tag @s add m_isAnimating
function demon:animations/animation.demon.walk/reset
function demon:animations/animation.demon.idle/reset
function demon:animations/animation.demon.slam/start
execute as @e[tag=md_boss_ai,distance=..0.1] run data merge entity @s {NoAI:1}
function crazy_features:demon/rotate_to_closest_player
playsound minecraft:demon_slam master @a ~ ~ ~ 0.5 0.8
