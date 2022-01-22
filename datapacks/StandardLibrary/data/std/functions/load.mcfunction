scoreboard objectives add std.timer dummy "計時器"

scoreboard objectives add std.timer.sec dummy "秒"
scoreboard objectives add std.timer.min dummy "分"
scoreboard objectives add std.timer.hur dummy "時"
scoreboard objectives add std.timer.day dummy "天"

scoreboard objectives add std.rng.out dummy "輸出結果"
scoreboard objectives add std.rng.temp dummy "計算緩存"

scoreboard objectives add std.const dummy "常數"

function std:define/const



function std:timer
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76標準函式庫\u00a7e加載完畢"