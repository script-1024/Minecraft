# 切換瞄準狀態
# call | player/aim/check -> 長按右鍵

# 鎖定，不再持續增加
scoreboard players set @s player.use.times -1

# 一直按住則 use.cd 維持在高值，低於一定閾值說明玩家已經放開按鍵
execute if score @s player.use.cd matches 4.. run scoreboard players set @s player.aim 1
execute if score @s player.use.cd matches ..3 run scoreboard players set @s player.aim 0