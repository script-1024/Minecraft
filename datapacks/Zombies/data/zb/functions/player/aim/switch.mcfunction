# 切換瞄準狀態
# call | player/aim/check -> 點按右鍵

# 重置
execute unless score @s player.use.times matches ..-1 run scoreboard players set @s player.use.times 0

# 反轉瞄準狀態: 已經是true就失敗，反之為fasle則成功
execute store success score @s player.aim unless score @s player.aim matches 1