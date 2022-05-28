scoreboard objectives remove std.timer
scoreboard objectives remove std.second
scoreboard objectives remove std.minute
scoreboard objectives remove std.hour
scoreboard objectives remove std.day

scoreboard objectives remove std.const

function std:timer
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76標準函式庫\u00a7e卸載完畢"