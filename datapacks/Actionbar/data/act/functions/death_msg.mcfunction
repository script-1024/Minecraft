scoreboard players set @s player.death 0
tellraw @s ""
tellraw @s "§b=============="
tellraw @s {"translate":"坐標: %s, %s, %s","color":"aqua","with":[{"score":{"name":"@s","objective":"last.x"},"color":"white"},{"score":{"name":"@s","objective":"last.y"},"color":"white"},{"score":{"name":"@s","objective":"last.z"},"color":"white"}]}
execute if score @s self.dimension matches -1 run tellraw @s "§b維度: §9地獄"
execute if score @s self.dimension matches 0 run tellraw @s "§b維度: §9主世界"
execute if score @s self.dimension matches 1 run tellraw @s "§b維度: §9終界"
tellraw @s "§b=============="
tellraw @s ""