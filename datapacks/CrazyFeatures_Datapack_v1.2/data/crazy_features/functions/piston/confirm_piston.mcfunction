scoreboard players add @s m_piston_length 1
tag @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest,tag=m_piston_side] add m_piston_id1
tag @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest,tag=m_piston_up] add m_piston_id2
tag @e[type=armor_stand,tag=m_piston_old,limit=1,sort=nearest,tag=m_piston_down] add m_piston_id3


execute as @s at @s if entity @s[tag=m_p_sticky] run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_piston_head,limit=1,sort=nearest,distance=..0.1] m_pistonID run tag @s add m_p_sticky
execute as @s at @s if entity @s[tag=!m_p_sticky] run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_piston_head,limit=1,sort=nearest,distance=..0.1] m_pistonID run tag @s remove m_p_sticky


execute as @e[tag=m_piston_old,limit=1,sort=nearest] at @s run function crazy_features:piston/set_piston_head



scoreboard players set @e[tag=m_piston_head,limit=1,sort=nearest] m_piston_state 1
tag @e[tag=m_piston_head,limit=1,sort=nearest] add m_PISTON_head
tag @e[tag=m_piston_head,limit=1,sort=nearest] remove m_piston_head
tag @e[tag=m_piston_old,limit=1,sort=nearest] remove m_piston_old
tag @e[tag=m_piston_new,limit=1,sort=nearest] remove m_piston_new
tag @e[tag=m_piston_ancient,limit=1,sort=nearest] remove m_piston_ancient

#tag @e[tag=m_piston_side] remove m_piston_side
#tag @e[tag=m_piston_up] remove m_piston_up
#tag @e[tag=m_piston_down] remove m_piston_down

scoreboard players add @s m_piston_timer 0

playsound minecraft:entity.experience_orb.pickup master @a
