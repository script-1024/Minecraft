scoreboard players set @s here 0
tellraw @a ""
tellraw @a "§e=============="
tellraw @a ["§e玩家: ",{"selector":"@s"}]
tellraw @a {"translate":"坐標: %s, %s, %s","color":"yellow","with":[{"score":{"name":"@s","objective":"self.x"},"color":"red"},{"score":{"name":"@s","objective":"self.y"},"color":"green"},{"score":{"name":"@s","objective":"self.z"},"color":"aqua"}]}
execute if score @s self.dimension matches -1 run tellraw @a "§e維度: §d地獄"
execute if score @s self.dimension matches 0 run tellraw @a "§e維度: §d主世界"
execute if score @s self.dimension matches 1 run tellraw @a "§e維度: §d終界"
tellraw @a "§e=============="
tellraw @a ""