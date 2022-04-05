recipe take @s crazy_features:piston_normal
advancement revoke @s only crazy_features:craft_piston_normal

clear @s minecraft:knowledge_book 1
give @s minecraft:vex_spawn_egg{CustomModelData:2,display:{Name:"{\"text\":\"Bendable Piston\",\"italic\":\"false\"}"},EntityTag:{id:"minecraft:armor_stand",Invisible:1,Marker:1,Tags:["m_sp_2","m_sp"]},HideFlags:63}
