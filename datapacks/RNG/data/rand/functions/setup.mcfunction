scoreboard objectives add rng.timer dummy "計時器"
scoreboard objectives add rng.out dummy "輸出結果"
scoreboard objectives add rng.temp dummy "計算緩存"
scoreboard objectives add rng.const dummy "常數"

function rand:reset

#隨機數生成公式： result = (a * seed + b) % m
scoreboard players set #a rng.const 1103515245
scoreboard players set #b rng.const 12345
scoreboard players set _max rng.const 2147483647
scoreboard players set _min rng.const -2147483648
scoreboard players set _fullStack rng.const 64
scoreboard players set _smallStack rng.const 16
scoreboard players set _minus rng.const -1
scoreboard players set #10000 rng.const 10000

function rand:timer
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76隨機數生成器\u00a7e加載完畢"