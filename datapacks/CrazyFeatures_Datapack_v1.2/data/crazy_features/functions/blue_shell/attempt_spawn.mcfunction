
execute as @e[tag=m_blue_shell] run particle smoke ~ ~0.2 ~ 0.1 0.1 0.1 0.1 10 force
execute as @e[tag=m_blue_shell] at @s run kill @e[tag=m_sp_3]
execute as @e[tag=m_sp_3] at @s run function crazy_features:blue_shell/spawn
