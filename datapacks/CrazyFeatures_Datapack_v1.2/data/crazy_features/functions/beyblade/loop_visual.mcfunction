execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=..500}] run execute at @s run tp @s ~ ~ ~ ~40 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=501..1000}] run execute at @s run tp @s ~ ~ ~ ~30 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1001..1100}] run execute at @s run tp @s ~ ~ ~ ~20 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1101..1200}] run execute at @s run tp @s ~ ~ ~ ~10 ~

execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1201..1205}] run execute at @s run tp @s ~ ~ ~ ~7 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1206..1210}] run execute at @s run tp @s ~ ~ ~ ~5 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1211..1215}] run execute at @s run tp @s ~ ~ ~ ~3 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1216..1220}] run execute at @s run tp @s ~ ~ ~ ~2 ~
execute positioned ~ ~0.38 ~ if entity @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1,scores={m_bb_spin_timer=1221..1225}] run execute at @s run tp @s ~ ~ ~ ~1 ~


execute if entity @s[scores={m_bb_hit_timer=1..}] run function crazy_features:beyblade/hit_timer
execute if entity @s[scores={m_bb_fall_timer=1..}] run function crazy_features:beyblade/fall_timer

#execute if entity @s[scores={m_bb_hit_timer=1..}] positioned ~ ~0.38 ~ run scoreboard players set @e[type=armor_stand,tag=m_beyblade_center,distance=..0.01,sort=nearest,limit=1] m_bb_hit_cd 5






execute store result entity @s Pose.Head[0] float 1 run scoreboard players get @s m_bb_tilt
