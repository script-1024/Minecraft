#隨機數生成公式： result = (a * seed + b) % m
#以第一次算出的結果為種子再算一次，避免兩次取值的時間間隔太短導致結果看起來不隨機。
scoreboard players operation @p std.rng.temp = @p std.timer

scoreboard players operation @p std.rng.temp *= #rng_a std.const
scoreboard players operation @p std.rng.temp += #rng_b std.const
scoreboard players operation @p std.rng.temp %= _32max std.const

#防止溢位
scoreboard players operation @p std.rng.temp /= #1w std.const

scoreboard players operation @p std.rng.temp *= #rng_a std.const
scoreboard players operation @p std.rng.temp += #rng_b std.const
scoreboard players operation @p std.rng.temp %= _32max std.const

#轉成正數
execute if score @p std.rng.temp matches ..-1 run scoreboard players operation @p std.rng.temp *= _minus std.const

scoreboard players operation @p std.rng.out = @p std.rng.temp