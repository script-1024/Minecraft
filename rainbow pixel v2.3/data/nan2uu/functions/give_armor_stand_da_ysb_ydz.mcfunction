#剥夺进度和配方
recipe take @s nan2uu:armor_stand_da_ysb_ydz
advancement revoke @s only nan2uu:armor_stand_da_ysb_ydz

#清除知识之书
clear @s knowledge_book

#给予玩家物品
give @s minecraft:armor_stand{EntityTag:{id:"minecraft:armor_stand",ShowArms:true},CustomModelData:20001}