gamerule maxCommandChainLength 2147483647

# Trigger
scoreboard objectives add here trigger

# Player
scoreboard objectives add p.x dummy "x"
scoreboard objectives add p.y dummy "y"
scoreboard objectives add p.z dummy "z"
scoreboard objectives add p.dimension dummy "維度"

scoreboard objectives add p.xp dummy
scoreboard objectives add p.xp.tmp dummy
scoreboard objectives add p.xpNow dummy
scoreboard objectives add p.level dummy
scoreboard objectives add p.level.tmp dummy
scoreboard objectives add p.levelNow dummy
scoreboard objectives add p.exp dummy
scoreboard objectives add p.exp.tmp dummy
scoreboard objectives add p.expInit dummy
scoreboard objectives add p.expSync dummy

scoreboard objectives add p.sneak dummy "潛行時長"
scoreboard objectives add p.health health "生命值"
scoreboard objectives add p.actionbar dummy "在動作欄顯示的標題"
scoreboard objectives add p.actionbarPrev dummy "上一個在動作欄顯示的標題"

# Standard Library
scoreboard objectives add std.timer dummy "計時器"
scoreboard objectives add std.const dummy "常數"

# Random Number Generator
scoreboard objectives add rng.out dummy
scoreboard objectives add rng.temp dummy

function std:define/const
function std:actionbar

scoreboard objectives setdisplay list p.health

function std:timer
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76函式庫\u00a7e更新完畢"