scoreboard objectives add std.timer dummy "計時器"
scoreboard objectives add std.second dummy "秒"
scoreboard objectives add std.minute dummy "分"
scoreboard objectives add std.hour dummy "時"
scoreboard objectives add std.day dummy "天"

scoreboard objectives add std.const dummy "常數"

function std:define/const



function std:timer
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76隨機數生成器\u00a7e加載完畢"