#剥夺进度和配方
recipe take @s nan2uu:glow_item_frame_tm
advancement revoke @s only nan2uu:glow_item_frame_tm

#清除知识之书
clear @s knowledge_book

#给予玩家物品
give @s glow_item_frame{EntityTag:{Invisible:1b},CustomModelData:1}