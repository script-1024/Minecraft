scoreboard objectives add rng.out dummy "輸出結果"
scoreboard objectives add rng.temp dummy "計算緩存"
scoreboard objectives add rng.const dummy "常數"
scoreboard objectives add rng.timer dummy "計時器"

function rng:reset

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76隨機數生成器\u00a7e加載完畢"