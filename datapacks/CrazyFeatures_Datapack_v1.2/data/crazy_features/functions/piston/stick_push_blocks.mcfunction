execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^1 #crazy_features:air run function crazy_features:piston/push/stick_push_1
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^2 #crazy_features:air run function crazy_features:piston/push/stick_push_2
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^3 #crazy_features:air run function crazy_features:piston/push/stick_push_3
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^4 #crazy_features:air run function crazy_features:piston/push/stick_push_4
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^5 #crazy_features:air run function crazy_features:piston/push/stick_push_5
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^6 #crazy_features:air run function crazy_features:piston/push/stick_push_6
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^7 #crazy_features:air run function crazy_features:piston/push/stick_push_7
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^8 #crazy_features:air run function crazy_features:piston/push/stick_push_8
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^9 #crazy_features:air run function crazy_features:piston/push/stick_push_9
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^10 #crazy_features:air run function crazy_features:piston/push/stick_push_10
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^11 #crazy_features:air run function crazy_features:piston/push/stick_push_11
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air if block ^ ^ ^12 #crazy_features:air run function crazy_features:piston/push/stick_push_12
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air run tag @s add m_p_blockedID
execute as @s[tag=!m_p_has_pushed] at @s unless block ^ ^ ^ #crazy_features:air run execute as @e[tag=m_PISTON_head,distance=..11] if score @s m_pistonID = @e[tag=m_p_blockedID,limit=1,sort=nearest] m_pistonID run tag @s add m_p_push_block

tag @s remove m_p_has_pushed
tag @s remove m_p_blockedID
