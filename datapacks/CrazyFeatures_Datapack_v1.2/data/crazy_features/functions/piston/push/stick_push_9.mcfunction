execute as @s at @s run clone ^ ^ ^8 ^ ^ ^8 ^ ^ ^9 replace move
execute as @s at @s run clone ^ ^ ^7 ^ ^ ^7 ^ ^ ^8 replace move
execute as @s at @s run clone ^ ^ ^6 ^ ^ ^6 ^ ^ ^7 replace move
execute as @s at @s run clone ^ ^ ^5 ^ ^ ^5 ^ ^ ^6 replace move
execute as @s at @s run clone ^ ^ ^4 ^ ^ ^4 ^ ^ ^5 replace move
execute as @s at @s run clone ^ ^ ^3 ^ ^ ^3 ^ ^ ^4 replace move
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
