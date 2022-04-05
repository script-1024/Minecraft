#execute as @s at @s positioned ^ ^ ^1 if block ~ ~ ~ #crazy_features:piston_destroyable run setblock ~ ~ ~ air destroy
execute as @s at @s run clone ^ ^ ^1 ^ ^ ^1 ^ ^ ^2
execute as @s at @s run clone ^ ^ ^ ^ ^ ^ ^ ^ ^1
setblock ~ ~ ~ barrier
tag @s add m_p_has_pushed
