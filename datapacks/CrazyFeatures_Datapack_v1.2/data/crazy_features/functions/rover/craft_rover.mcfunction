recipe take @s crazy_features:rover
advancement revoke @s only crazy_features:craft_rover

clear @s minecraft:knowledge_book 1
give @s minecraft:vex_spawn_egg{CustomModelData:6,display:{Name:"{\"text\":\"Mars Rover\",\"italic\":\"false\"}"},EntityTag:{id:"minecraft:armor_stand",Invisible:1,Marker:1,Tags:["m_sp_5","m_sp"]},HideFlags:63}
