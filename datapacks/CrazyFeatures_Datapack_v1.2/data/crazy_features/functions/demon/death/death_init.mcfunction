tag @s add m_isDead
tag @s add m_isAnimating
function demon:animations/animation.demon.walk/reset
function demon:animations/animation.demon.idle/reset
function demon:animations/animation.demon.punch_left/reset
function demon:animations/animation.demon.punch_right/reset
function demon:animations/animation.demon.slam/reset
function demon:animations/animation.demon.scream/reset
function demon:animations/animation.demon.death/start
scoreboard players set @s m_attackTimer1 0
scoreboard players set @s m_attackTimer2 0
scoreboard players set @s m_attackTimer3 0
execute as @e[tag=md_boss_ai,distance=..1] run data merge entity @s {NoAI:1}
playsound minecraft:demon_death master @a ~ ~ ~ 0.6 1.0
function crazy_features:demon/reset_bossbar
