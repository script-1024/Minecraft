function crazy_features:beyblade/summon

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},scores={m_fungus=1}] at @s run execute as @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1}}]}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}},scores={m_fungus=1}] at @s run tag @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] add m_bb_variant_1

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}},scores={m_fungus=1}] at @s run execute as @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:2}}]}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}},scores={m_fungus=1}] at @s run tag @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] add m_bb_variant_2

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}},scores={m_fungus=1}] at @s run execute as @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:3}}]}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}},scores={m_fungus=1}] at @s run tag @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] add m_bb_variant_3

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4}}},scores={m_fungus=1}] at @s run execute as @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:4}}]}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:4}}},scores={m_fungus=1}] at @s run tag @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] add m_bb_variant_4

execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}},scores={m_fungus=1}] at @s run execute as @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:5}}]}
execute as @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:5}}},scores={m_fungus=1}] at @s run tag @e[type=armor_stand,tag=m_beyblade_visual,tag=new_visual,limit=1,sort=nearest] add m_bb_variant_5

item replace entity @s[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Beyblade:1}}},scores={m_fungus=1}] weapon.mainhand with air
tag @e[type=armor_stand,tag=new_visual] remove new_visual
