tag @s add m_bb_defeated
scoreboard players set @s m_bb_spin_timer 1200
scoreboard players remove @e[type=armor_stand,tag=m_beyblade_center,distance=0.01..10,tag=!defeated] m_bb_spin_timer 20
scoreboard players set @s m_bb_hit_cd 0
execute at @s positioned ~ ~-0.38 ~ as @e[type=armor_stand,tag=m_beyblade_visual,limit=1,sort=nearest,distance=..0.01] at @s run scoreboard players set @s m_bb_hit_timer 0
execute at @s positioned ~ ~-0.38 ~ as @e[type=armor_stand,tag=m_beyblade_visual,limit=1,sort=nearest,distance=..0.01] at @s run scoreboard players set @s m_bb_fall_timer 1
