give @s chicken_spawn_egg{CustomModelData:100,display:{Name:' "\\u00a7e拆解台" '},EntityTag:{id:"armor_stand",Tags:[cjt],Small:1,NoGravity:1,NoBasePlate:1,Marker:1,Invulnerable:1,Invisible:1,Rotation:[0,0],ArmorItems:[{},{},{},{}],ArmorDropChances:[0,0,0,1]}}
advancement revoke @s only cjt:root
recipe take @s cjt:block
clear @s knowledge_book