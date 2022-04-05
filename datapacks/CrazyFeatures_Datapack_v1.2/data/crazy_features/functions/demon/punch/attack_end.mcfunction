function demon:animations/animation.demon.idle/start
tag @s remove m_isMoving
execute as @e[tag=md_boss_ai,distance=..0.1] run data merge entity @s {NoAI:0}
tag @s remove m_isAnimating
scoreboard players set @s m_attackTimer1 0
tag @a[tag=md_punch_hit] remove md_punch_hit
