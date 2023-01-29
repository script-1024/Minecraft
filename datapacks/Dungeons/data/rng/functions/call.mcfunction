# 取得時間
execute if entity @s[type=player] run scoreboard players operation @s rand.tmp = @s rand.seed
execute if entity @s[tag=dun] run scoreboard players operation @s rand.tmp = #gen rand.seed

# 線性同餘方法 (Linear Congruential Method, LCG)
# out = (A × seed + B) mod M
scoreboard players operation @s rand.tmp *= #a rand
scoreboard players operation @s rand.tmp += #b rand
scoreboard players operation @s rand.tmp %= #m rand

# 以上一次的結果為種子再進行一次，確保結果看起來足夠隨機
scoreboard players operation @s rand.tmp *= #a rand
scoreboard players operation @s rand.tmp += #b rand
scoreboard players operation @s rand.tmp %= #m rand

# 確保結果為正數
execute if score @s rand.tmp matches ..-1 run scoreboard players operation @s rand.tmp *= #-1 rand

# 保存結果
scoreboard players operation @s rand = @s rand.tmp

scoreboard players add #gen rand.seed 127