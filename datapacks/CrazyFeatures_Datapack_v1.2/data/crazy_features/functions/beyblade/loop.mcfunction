scoreboard players add @s[scores={m_bb_spin_timer=1..}] m_bb_spin_timer 1
scoreboard players remove @s[scores={m_bb_hit_cd=1..}] m_bb_hit_cd 1

execute if entity @s[scores={m_bb_spin_timer=0},nbt={OnGround:1b}] run scoreboard players set @s m_bb_spin_timer 1

execute as @e[type=armor_stand,tag=m_beyblade_visual,distance=..2] if score @s m_bb_ID = @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,limit=1,sort=nearest] m_bb_ID positioned ~ ~-0.38 ~ run tp @s ~ ~ ~
execute at @s positioned ~ ~-0.38 ~ as @e[type=armor_stand,tag=m_beyblade_visual,limit=1,sort=nearest,distance=..0.01] at @s run function crazy_features:beyblade/loop_visual

execute if entity @s[tag=m_bb_defeated] if score @s m_bb_spin_timer matches 1300.. run function crazy_features:beyblade/kill
execute if entity @s[tag=!m_bb_defeated] if score @s m_bb_spin_timer matches 1200.. run function crazy_features:beyblade/defeated

execute if score @s m_bb_spin_timer matches 1202 run function crazy_features:beyblade/slow_speed_force
execute if score @s m_bb_spin_timer matches 1207 run function crazy_features:beyblade/slow_speed_force
execute if score @s m_bb_spin_timer matches 1212 run function crazy_features:beyblade/slow_speed_force
execute if score @s m_bb_spin_timer matches 1217 run function crazy_features:beyblade/slow_speed_force
execute if score @s m_bb_spin_timer matches 1220 run scoreboard players set @s m_bb_motion_x 0
execute if score @s m_bb_spin_timer matches 1220 run scoreboard players set @s m_bb_motion_z 0
execute if score @s m_bb_spin_timer matches 1220 run particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.02 10 force

execute if score @s m_bb_motion_z matches 1.. unless block ~ ~0.5 ~0.3 #crazy_features:passable run function crazy_features:beyblade/slow_speed
execute if score @s m_bb_motion_z matches ..-1 unless block ~ ~0.5 ~-0.3 #crazy_features:passable run function crazy_features:beyblade/slow_speed
execute if score @s m_bb_motion_x matches 1.. unless block ~0.3 ~0.5 ~ #crazy_features:passable run function crazy_features:beyblade/slow_speed
execute if score @s m_bb_motion_x matches ..-1 unless block ~-0.3 ~0.5 ~ #crazy_features:passable run function crazy_features:beyblade/slow_speed
execute if score @s m_bb_motion_z matches 1.. unless block ~ ~0.5 ~0.3 #crazy_features:passable run scoreboard players operation @s m_bb_motion_z *= -1 m_constant
execute if score @s m_bb_motion_z matches ..-1 unless block ~ ~0.5 ~-0.3 #crazy_features:passable run scoreboard players operation @s m_bb_motion_z *= -1 m_constant
execute if score @s m_bb_motion_x matches 1.. unless block ~0.3 ~0.5 ~ #crazy_features:passable run scoreboard players operation @s m_bb_motion_x *= -1 m_constant
execute if score @s m_bb_motion_x matches ..-1 unless block ~-0.3 ~0.5 ~ #crazy_features:passable run scoreboard players operation @s m_bb_motion_x *= -1 m_constant

execute if entity @s[scores={m_bb_spin_timer=1..}] store result entity @s Motion[0] double 0.0002 run scoreboard players get @s m_bb_motion_x
execute if entity @s[scores={m_bb_spin_timer=1..}] store result entity @s Motion[1] double 0.0002 run scoreboard players get @s m_bb_motion_y
execute if entity @s[scores={m_bb_spin_timer=1..}] store result entity @s Motion[2] double 0.0002 run scoreboard players get @s m_bb_motion_z

execute if entity @s[scores={m_bb_hit_cd=0},tag=!m_bb_defeated] at @s if entity @e[type=armor_stand,tag=m_beyblade_center,distance=0.01..1,tag=!m_bb_defeated] run function crazy_features:beyblade/collide
