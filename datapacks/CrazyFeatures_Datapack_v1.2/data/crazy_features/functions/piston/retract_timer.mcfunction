
execute as @s[tag=m_p_sticky] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer at @s run function crazy_features:piston/pull

execute as @s at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_head
execute as @s at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order > @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_arm


execute as @s[scores={m_block_state=0}] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order < @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_remove
execute as @s[scores={m_block_state=1}] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order < @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_hide


scoreboard players add @s[scores={m_block_state=1,m_p_block_save=1..}] m_p_block_save 1
execute if score @s m_p_block_save >= @s m_piston_length run scoreboard players set @s m_block_state 0
execute if score @s m_p_block_save >= @s m_piston_length run scoreboard players set @s m_p_block_save 0

scoreboard players add @s m_piston_timer 1


execute if score @s m_piston_timer > @s m_piston_length if entity @s[tag=m_pistonhead_side,tag=!m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:50}}]}
execute if score @s m_piston_timer > @s m_piston_length if entity @s[tag=m_pistonhead_up,tag=!m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:51}}]}
execute if score @s m_piston_timer > @s m_piston_length if entity @s[tag=m_pistonhead_down,tag=!m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:52}}]}
execute if score @s m_piston_timer > @s m_piston_length if entity @s[tag=m_pistonhead_side,tag=m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:53}}]}
execute if score @s m_piston_timer > @s m_piston_length if entity @s[tag=m_pistonhead_up,tag=m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:54}}]}
execute if score @s m_piston_timer > @s m_piston_length if entity @s[tag=m_pistonhead_down,tag=m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:55}}]}


execute if score @s m_piston_timer > @s m_piston_length run scoreboard players set @s m_block_state 0
#execute if score @s m_piston_timer > @s m_piston_length run scoreboard players set @s m_p_block_save 0
execute if score @s m_piston_timer > @s m_piston_length run scoreboard players set @s m_piston_state 0
execute if score @s m_piston_timer > @s m_piston_length run scoreboard players set @s m_piston_timer 0
