#隨機數生成公式： result = (a * seed + b) % m
#以第一次算出的結果為種子再算一次，避免兩次取值的時間間隔太短導致結果看起來不隨機。
scoreboard players operation @p rng.temp = @p rng.timer

scoreboard players operation @p rng.temp *= #a rng.const
scoreboard players operation @p rng.temp += #b rng.const
scoreboard players operation @p rng.temp %= _max rng.const

#防止溢位
scoreboard players operation @p rng.temp /= #10000 rng.const

scoreboard players operation @p rng.temp *= #a rng.const
scoreboard players operation @p rng.temp += #b rng.const
scoreboard players operation @p rng.temp %= _max rng.const

#轉成正數
execute if score @p rng.temp matches ..-1 run scoreboard players operation @p rng.temp *= _minus rng.const

scoreboard players operation @p rng.out = @p rng.temp