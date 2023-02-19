scoreboard players reset * rng.timer
scoreboard players reset * rng.out
scoreboard players reset * rng.temp
scoreboard players reset * rng.const

# 隨機數生成公式： result = (a * seed + b) % m
scoreboard players set #a rng.const 1103515245
scoreboard players set #b rng.const 12345
scoreboard players set #max rng.const 2147483647
scoreboard players set #-1 rng.const -1
scoreboard players set #10000 rng.const 10000
scoreboard players set #exist rng.const 1