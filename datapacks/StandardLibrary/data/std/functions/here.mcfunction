scoreboard players set @s here 0
execute if score @s p.dimension matches -1 run tellraw @a ["\n\u00a7e玩家: ",{"selector":"@s"},"\n\u00a7e座標: ",{"score":{"name":"@s","objective":"p.x"},"color":"red"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.y"},"color":"green"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.z"},"color":"aqua"}," \n\u00a7e維度: \u00a7d地獄\n"]
execute if score @s p.dimension matches 0 run tellraw @a ["\n\u00a7e玩家: ",{"selector":"@s"},"\n\u00a7e座標: ",{"score":{"name":"@s","objective":"p.x"},"color":"red"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.y"},"color":"green"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.z"},"color":"aqua"}," \n\u00a7e維度: \u00a7d主世界\n"]
execute if score @s p.dimension matches 1 run tellraw @a ["\n\u00a7e玩家: ",{"selector":"@s"},"\n\u00a7e座標: ",{"score":{"name":"@s","objective":"p.x"},"color":"red"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.y"},"color":"green"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.z"},"color":"aqua"}," \n\u00a7e維度: \u00a7d終界\n"]