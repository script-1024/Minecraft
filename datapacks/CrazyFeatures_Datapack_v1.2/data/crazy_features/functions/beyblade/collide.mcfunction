scoreboard players set @s m_bb_hit_cd 15


scoreboard players set @s m_bb_hit_power 1
execute if predicate crazy_features:50_percent run scoreboard players set @s m_bb_hit_power 2
execute if predicate crazy_features:25_percent run scoreboard players set @s m_bb_hit_power 3

execute if score @s m_bb_spin_timer matches 700.. run execute if predicate crazy_features:25_percent run scoreboard players set @s m_bb_hit_power 3
execute if score @s m_bb_spin_timer matches 1000.. run execute if predicate crazy_features:50_percent run scoreboard players set @s m_bb_hit_power 3



execute if score @s m_bb_hit_power matches 1 run execute positioned ~ ~-0.38 ~ as @e[type=armor_stand,tag=m_beyblade_visual,limit=1,sort=nearest,distance=..0.01,tag=!m_bb_defeated] run scoreboard players set @s m_bb_hit_timer 1
execute if score @s m_bb_hit_power matches 2 run execute positioned ~ ~-0.38 ~ as @e[type=armor_stand,tag=m_beyblade_visual,limit=1,sort=nearest,distance=..0.01,tag=!m_bb_defeated] run scoreboard players set @s m_bb_hit_timer 21
execute if score @s m_bb_hit_power matches 3 run execute positioned ~ ~-0.38 ~ as @e[type=armor_stand,tag=m_beyblade_visual,limit=1,sort=nearest,distance=..0.01,tag=!m_bb_defeated] run scoreboard players set @s m_bb_hit_timer 51

scoreboard players set @s m_bb_hit_sound 1
execute if predicate crazy_features:20_percent run scoreboard players set @s m_bb_hit_sound 2
execute if predicate crazy_features:20_percent run scoreboard players set @s m_bb_hit_sound 3
execute if predicate crazy_features:20_percent run scoreboard players set @s m_bb_hit_sound 4
execute if predicate crazy_features:20_percent run scoreboard players set @s m_bb_hit_sound 5

execute if score @s m_bb_hit_sound matches 1 run playsound minecraft:beyblade_hit1 master @a ~ ~ ~ 0.4 1.0
execute if score @s m_bb_hit_sound matches 2 run playsound minecraft:beyblade_hit2 master @a ~ ~ ~ 0.4 1.0
execute if score @s m_bb_hit_sound matches 3 run playsound minecraft:beyblade_hit3 master @a ~ ~ ~ 0.4 1.0
execute if score @s m_bb_hit_sound matches 4 run playsound minecraft:beyblade_hit4 master @a ~ ~ ~ 0.4 1.0
execute if score @s m_bb_hit_sound matches 5 run playsound minecraft:beyblade_hit5 master @a ~ ~ ~ 0.4 1.0

execute if score @s m_bb_hit_power matches 1 if score @s m_bb_spin_timer matches ..1150 run scoreboard players add @s m_bb_spin_timer 40
execute if score @s m_bb_hit_power matches 2 if score @s m_bb_spin_timer matches ..1130 run scoreboard players add @s m_bb_spin_timer 60
execute if score @s m_bb_hit_power matches 3 if score @s m_bb_spin_timer matches ..1090 run scoreboard players add @s m_bb_spin_timer 100

execute at @s run function crazy_features:beyblade/collide_launch
