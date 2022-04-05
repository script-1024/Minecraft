execute if score @s m_tnt_stage matches 10 run scoreboard players set @s m_comp_1 1
execute if score @s m_tnt_stage matches 11 run scoreboard players set @s m_comp_2 1
execute if score @s m_tnt_stage matches 12 run scoreboard players set @s m_comp_3 1


execute if score @s m_tnt_stage matches 10 run execute as @e[tag=m_tnt_slot_1,limit=1,sort=nearest] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:9}}]}
execute if score @s m_tnt_stage matches 11 run execute as @e[tag=m_tnt_slot_2,limit=1,sort=nearest] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:9}}]}
execute if score @s m_tnt_stage matches 12 run execute as @e[tag=m_tnt_slot_3,limit=1,sort=nearest] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:9}}]}
playsound m_insert master @a ~ ~ ~ 0.5 1.0
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.2 1.0

scoreboard players add @s m_tnt_stage 1
clear @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:firework_rocket"}},distance=..3,limit=1,sort=nearest] minecraft:firework_rocket 1
scoreboard players set @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:firework_rocket"}},distance=..3,limit=1,sort=nearest] m_talk 0
