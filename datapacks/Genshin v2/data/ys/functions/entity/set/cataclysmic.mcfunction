#> 剧变反应
## 元素精通加成 = 16 x 元素精通 / (元素精通+2000) x 100%

execute store result score @s player.em on attacker run scoreboard players get @s player.em

# 记得要在最后 ÷1000
scoreboard players set @s player.masteryBonus 16000
scoreboard players operation @s player.masteryBonus *= @s player.em
scoreboard players set @s ys.tmp 2000
scoreboard players operation @s ys.tmp += @s player.em
scoreboard players operation @s player.masteryBonus /= @s ys.tmp

# 补偿丢失的精度
scoreboard players add @s player.masteryBonus 1