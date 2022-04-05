schedule function crazy_features:tick_1s 1s

execute as @a[tag=give] at @s run function crazy_features:give

execute as @e[type=armor_stand,tag=m_sp_6] at @s run function crazy_features:demon/summon
