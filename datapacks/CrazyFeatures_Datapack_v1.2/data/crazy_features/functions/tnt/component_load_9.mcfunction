execute if score @s m_tnt_stage matches 10 run scoreboard players set @s m_comp_1 9
execute if score @s m_tnt_stage matches 11 run scoreboard players set @s m_comp_2 9
execute if score @s m_tnt_stage matches 12 run scoreboard players set @s m_comp_3 9


execute if score @s m_tnt_stage matches 10 run execute as @e[tag=m_tnt_slot_1,limit=1,sort=nearest] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:17}}]}
execute if score @s m_tnt_stage matches 11 run execute as @e[tag=m_tnt_slot_2,limit=1,sort=nearest] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:17}}]}
execute if score @s m_tnt_stage matches 12 run execute as @e[tag=m_tnt_slot_3,limit=1,sort=nearest] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:17}}]}

playsound m_insert master @a ~ ~ ~ 0.5 1.0
playsound minecraft:entity.spider.hurt master @a ~ ~ ~ 0.3 1.0

scoreboard players add @s m_tnt_stage 1
clear @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:cobweb"}},distance=..3,limit=1,sort=nearest] minecraft:cobweb 1
scoreboard players set @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:cobweb"}},distance=..3,limit=1,sort=nearest] m_talk 0
