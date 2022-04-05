recipe take @s crazy_features:traffic_light
advancement revoke @s only crazy_features:craft_traffic_light

clear @s minecraft:knowledge_book 1
give @s minecraft:vex_spawn_egg{CustomModelData:5,display:{Name:"{\"text\":\"Traffic Light\",\"italic\":\"false\"}"},EntityTag:{id:"minecraft:armor_stand",Invisible:1,Marker:1,Tags:["m_sp_4","m_sp"]},HideFlags:63}
