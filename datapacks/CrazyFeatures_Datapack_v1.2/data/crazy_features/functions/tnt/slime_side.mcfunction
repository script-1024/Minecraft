tp @s ~1 ~10 ~
execute as @s at @s if entity @s[scores={m_slime_dis=1..}] run function crazy_features:tnt/slime_down
execute as @s at @s if entity @s[scores={m_slime_dis=1..}] run execute if block ~ ~ ~ #crazy_features:passable unless block ~ ~-1 ~ #crazy_features:passable run setblock ~ ~ ~ slime_block
execute as @s at @s if entity @s[scores={m_slime_dis=1..}] run scoreboard players remove @s m_slime_dis 1
execute as @s at @s if entity @s[scores={m_slime_dis=1..}] run function crazy_features:tnt/slime_side
