scoreboard players set @s here 0
tellraw @a "\n"
tellraw @s "\u00a7e=============="
tellraw @a ["\u00a7e玩家: ",{"selector":"@s"}]
tellraw @a ["\u00a7e坐標: ",{"score":{"name":"@s","objective":"p.x"},"color":"red"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.y"},"color":"green"},"\u00a7f, ",{"score":{"name":"@s","objective":"p.z"},"color":"aqua"}]
execute if score @s p.dimension matches -1 run tellraw @a "\u00a7e維度: \u00a7d地獄"
execute if score @s p.dimension matches 0 run tellraw @a "\u00a7e維度: \u00a7d主世界"
execute if score @s p.dimension matches 1 run tellraw @a "\u00a7e維度: \u00a7d終界"
tellraw @s "\u00a7e=============="
tellraw @a "\n"