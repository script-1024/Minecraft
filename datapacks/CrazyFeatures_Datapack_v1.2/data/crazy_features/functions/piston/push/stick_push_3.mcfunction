execute as @s at @s run clone ^ ^ ^2 ^ ^ ^2 ^ ^ ^3 replace move
execute as @s at @s run clone ^ ^ ^1 ^ ^ ^1 ^ ^ ^2 replace move

execute as @s[tag=m_piston_id1] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^ ^1
execute as @s[tag=m_piston_id2] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^ ^1
execute as @s[tag=m_piston_id3] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^ ^1
execute as @s[tag=m_piston_id4] at @s run clone ^ ^ ^ ^ ^ ^ ^1 ^ ^
execute as @s[tag=m_piston_id5] at @s run clone ^ ^ ^ ^ ^ ^ ^-1 ^ ^
execute as @s[tag=m_piston_id6] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^1 ^
execute as @s[tag=m_piston_id7] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^-1 ^
execute as @s[tag=m_piston_id8] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^1 ^
execute as @s[tag=m_piston_id9] at @s run clone ^ ^ ^ ^ ^ ^ ^ ^-1 ^



setblock ~ ~ ~ barrier
tag @s add m_p_has_pushed