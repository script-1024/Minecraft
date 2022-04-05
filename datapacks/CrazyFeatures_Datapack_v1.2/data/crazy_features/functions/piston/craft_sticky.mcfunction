recipe take @s crazy_features:piston_sticky
advancement revoke @s only crazy_features:craft_piston_sticky

clear @s minecraft:knowledge_book 1
give @s minecraft:vex_spawn_egg{CustomModelData:3,display:{Name:"{\"text\":\"Bendable Sticky Piston\",\"italic\":\"false\"}"},EntityTag:{id:"minecraft:armor_stand",Invisible:1,Marker:1,Tags:["m_sp_2","m_sp","m_sp_2_s"]},HideFlags:63}
