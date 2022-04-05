scoreboard players set @s m_attack1_cd 30
scoreboard players add @s m_variant_punch 1
execute if score @s m_variant_punch matches 2 run scoreboard players set @s m_variant_punch 0
tag @s add m_isAnimating
function demon:animations/animation.demon.walk/reset
function demon:animations/animation.demon.idle/reset
execute if score @s m_variant_punch matches 0 run function demon:animations/animation.demon.punch_left/start
execute if score @s m_variant_punch matches 1 run function demon:animations/animation.demon.punch_right/start
execute as @e[tag=md_boss_ai,distance=..0.1] run data merge entity @s {NoAI:1}
function crazy_features:demon/rotate_to_closest_player
