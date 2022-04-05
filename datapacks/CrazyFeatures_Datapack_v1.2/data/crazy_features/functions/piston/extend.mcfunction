execute as @s[scores={m_piston_state=0}] at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 0.4 1.0
scoreboard players operation @s[scores={m_piston_state=0}] m_piston_timer = @s m_piston_length
execute if entity @s[scores={m_piston_state=0},tag=m_pistonhead_side] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:18}}]}
execute if entity @s[scores={m_piston_state=0},tag=m_pistonhead_up] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:30}}]}
execute if entity @s[scores={m_piston_state=0},tag=m_pistonhead_down] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:31}}]}
function crazy_features:piston/extend_timer
