execute positioned ^ ^1 ^2.7 run particle block deepslate ~ ~ ~ 0.4 0.4 0.4 0.1 1 force

execute positioned ^ ^ ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^ ^1 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^ ^2 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^ ^3 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^1 ^ ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^1 ^1 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^1 ^2 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^-1 ^ ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^-1 ^1 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^-1 ^2 ^3 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^ ^ ^4 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy
execute positioned ^ ^1 ^4 unless block ~ ~ ~ #crazy_features:air run setblock ~ ~ ~ air destroy

scoreboard players add @s m_r_drill_sound 1
execute as @s[scores={m_r_drill_sound=1}] at @s run playsound minecraft:drill_loop master @a ~ ~ ~ 1.0 1.0
scoreboard players set @s[scores={m_r_drill_sound=45}] m_r_drill_sound 0

execute positioned ^ ^ ^3 run kill @e[type=#minecraft:mobs,distance=..2,tag=!m_nokill]
