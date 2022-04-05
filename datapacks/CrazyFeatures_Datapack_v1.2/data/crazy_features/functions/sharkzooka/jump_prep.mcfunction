scoreboard players remove @s m_shark_jmp_prep 1
execute if score @s m_shark_jmp_prep matches 10 run function crazy_features:sharkzooka/jump_spawn
execute if score @s m_shark_jmp_prep matches 1 run kill @s
