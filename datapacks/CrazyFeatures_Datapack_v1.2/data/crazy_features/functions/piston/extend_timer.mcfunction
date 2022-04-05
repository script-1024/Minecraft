

execute as @s[tag=!m_p_sticky] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer at @s run function crazy_features:piston/push_blocks
execute as @s[tag=m_p_sticky] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer at @s run function crazy_features:piston/stick_push_blocks


execute as @s[tag=m_p_push_block] at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.1 1.0
execute as @s[tag=m_p_push_block] at @s run scoreboard players set @s m_block_state 1
execute as @s[tag=m_p_push_block] at @s run scoreboard players operation @s m_p_block_save = @s m_piston_timer
execute as @s[tag=m_p_push_block] at @s run scoreboard players set @s m_piston_timer 0
execute as @s[tag=m_p_push_block] at @s run scoreboard players set @s m_piston_state 1

execute as @s[tag=!m_p_push_block] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_head
execute as @s[tag=!m_p_push_block] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order > @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_arm
execute as @s[tag=!m_p_push_block] at @s run execute as @e[tag=m_piston_ext] if score @s m_pistonID = @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_pistonID if score @s m_piston_order < @e[tag=m_PISTON_head,limit=1,sort=nearest,distance=..0.1] m_piston_timer run function crazy_features:piston/set_piston_hide



execute as @s[tag=!m_p_push_block] at @s run scoreboard players operation @s m_score_comparer = @s m_piston_length
execute as @s[tag=!m_p_push_block] at @s run scoreboard players operation @s m_score_comparer -= @s m_piston_timer


execute as @s[tag=m_p_push_block] at @s if score @s m_score_comparer matches 0 if entity @s[tag=m_pistonhead_side,tag=!m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:50}}]}
execute as @s[tag=m_p_push_block] at @s if score @s m_score_comparer matches 0 if entity @s[tag=m_pistonhead_up,tag=!m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:51}}]}
execute as @s[tag=m_p_push_block] at @s if score @s m_score_comparer matches 0 if entity @s[tag=m_pistonhead_down,tag=!m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:52}}]}
execute as @s[tag=m_p_push_block] at @s if score @s m_score_comparer matches 0 if entity @s[tag=m_pistonhead_side,tag=m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:53}}]}
execute as @s[tag=m_p_push_block] at @s if score @s m_score_comparer matches 0 if entity @s[tag=m_pistonhead_up,tag=m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:54}}]}
execute as @s[tag=m_p_push_block] at @s if score @s m_score_comparer matches 0 if entity @s[tag=m_pistonhead_down,tag=m_p_sticky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:55}}]}


execute if score @s m_piston_timer matches 1 at @s unless block ~ ~ ~ #crazy_features:non_piston_source run function crazy_features:piston/self_destruct

scoreboard players remove @s[tag=!m_p_push_block] m_piston_timer 1



execute if score @s[tag=!m_p_push_block] m_piston_timer matches 0 run scoreboard players set @s m_piston_state 1
execute if score @s[tag=!m_p_push_block] m_piston_timer matches 0 run scoreboard players set @s m_piston_timer 0
tag @s remove m_p_push_block
