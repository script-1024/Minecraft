# 設置分數
# call | player/aim/check -> 如果 右鍵次數>=1 且 持有可瞄準的物品 時

scoreboard players set @s player.use 0
scoreboard players set @s player.use.cd 6
execute unless score @s player.use.times matches ..-1 run scoreboard players add @s player.use.times 1