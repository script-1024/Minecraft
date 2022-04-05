scoreboard players add @s[scores={m_tnt_stage=1..9}] m_tnt_stage 1
scoreboard players add @s[scores={m_tnt_stage=14..20}] m_tnt_stage 1

execute if score @s m_tnt_stage matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:2}}]}
execute if score @s m_tnt_stage matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:3}}]}
execute if score @s m_tnt_stage matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:4}}]}
execute if score @s m_tnt_stage matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:5}}]}
execute if score @s m_tnt_stage matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:6}}]}
execute if score @s m_tnt_stage matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:7}}]}
execute if score @s m_tnt_stage matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:8}}]}

execute if score @s m_tnt_stage matches 5 run playsound minecraft:block.chest.open master @a ~ ~ ~ 0.2 0.95
execute if score @s m_tnt_stage matches 2 run playsound m_tnt_open master @a ~ ~ ~ 0.5 0.95

execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:firework_rocket"}},distance=..3] run function crazy_features:tnt/component_load_1
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:tnt"}},distance=..3] run function crazy_features:tnt/component_load_2
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:sponge"}},distance=..3] run function crazy_features:tnt/component_load_3
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:fire_charge"}},distance=..3] run function crazy_features:tnt/component_load_4
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:dragon_egg"}},distance=..3] run function crazy_features:tnt/component_load_5
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:chorus_fruit"}},distance=..3] run function crazy_features:tnt/component_load_6
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:slime_block"}},distance=..3] run function crazy_features:tnt/component_load_7
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:experience_bottle"}},distance=..3] run function crazy_features:tnt/component_load_8
execute as @s[scores={m_tnt_stage=10..12}] at @s if entity @a[scores={m_talk=1..},nbt={SelectedItem:{id:"minecraft:cobweb"}},distance=..3] run function crazy_features:tnt/component_load_9

execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[distance=..3] times 3 10 5
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:firework_rocket"}},distance=..3] actionbar ["",{"text":"Spawns colorful fireworks ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases amount and radius","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:tnt"}},distance=..3] actionbar ["",{"text":"Spawns lots of tnt ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases amount and spread distance","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:sponge"}},distance=..3] actionbar ["",{"text":"Removes water in a the explosion radius ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases affected area","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:fire_charge"}},distance=..3] actionbar ["",{"text":"Spreads fire everywhere ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases spread distance","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:dragon_egg"}},distance=..3] actionbar ["",{"text":"Enderdragon explosion ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases amount","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:chorus_fruit"}},distance=..3] actionbar ["",{"text":"Teleports explosion to nearby players (5+ blocks away) ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases playercount and radius","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:slime_block"}},distance=..3] actionbar ["",{"text":"Covers the ground in slimeblocks ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases affected surface area","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:experience_bottle"}},distance=..3] actionbar ["",{"text":"Experience orb explosion ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases amount","color":"gray"}]
execute as @s[scores={m_tnt_stage=10..12}] at @s run title @a[nbt={SelectedItem:{id:"minecraft:cobweb"}},distance=..3] actionbar ["",{"text":"Spreads cobweb everywhere ","color":"gold"},{"text":"|","color":"black"},{"text":" Level increases radius","color":"gray"}]



execute as @s[scores={m_tnt_stage=13}] at @s if entity @a[scores={m_talk=1..},distance=..3] run scoreboard players set @s m_tnt_stage 14


execute if score @s m_tnt_stage matches 14 run tag @e[type=villager,tag=m_tnt_vil,limit=5,sort=nearest,distance=..1] add kill
execute if score @s m_tnt_stage matches 14 run execute as @e[tag=kill] at @s run tp @s ~ -10 ~
execute if score @s m_tnt_stage matches 14 run kill @e[tag=kill]

execute if score @s m_tnt_stage matches 14 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:7}}]}
execute if score @s m_tnt_stage matches 15 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:6}}]}
execute if score @s m_tnt_stage matches 16 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:5}}]}
execute if score @s m_tnt_stage matches 17 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:4}}]}
execute if score @s m_tnt_stage matches 18 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:3}}]}
execute if score @s m_tnt_stage matches 19 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:2}}]}
execute if score @s m_tnt_stage matches 20 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1,tag:{CustomModelData:1}}]}

execute if score @s m_tnt_stage matches 14 run playsound minecraft:block.chest.close master @a ~ ~ ~ 0.2 0.95
execute if score @s m_tnt_stage matches 14 run playsound m_tnt_close master @a ~ ~ ~ 0.7 0.95


execute if score @s m_tnt_stage matches 20 run kill @e[tag=m_tnt_slot_1,limit=1,sort=nearest]
execute if score @s m_tnt_stage matches 20 run kill @e[tag=m_tnt_slot_2,limit=1,sort=nearest]
execute if score @s m_tnt_stage matches 20 run kill @e[tag=m_tnt_slot_3,limit=1,sort=nearest]
