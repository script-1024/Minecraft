recipe take @s crazy_features:c_tnt
advancement revoke @s only crazy_features:craft_c_tnt

clear @s minecraft:knowledge_book 1
give @s minecraft:vex_spawn_egg{CustomModelData:1,display:{Name:"{\"text\":\"Customizable Tnt\",\"italic\":\"false\"}"},EntityTag:{id:"minecraft:armor_stand",Invisible:1,Marker:1,Tags:["m_sp_1","m_sp"]},HideFlags:63}
