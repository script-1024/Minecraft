# 觸發器
scoreboard objectives add here trigger

# 玩家
scoreboard objectives add p.x dummy "\u00a7ax"
scoreboard objectives add p.y dummy "\u00a7cy"
scoreboard objectives add p.z dummy "\u00a7bz"
scoreboard objectives add p.direction dummy "朝向"
scoreboard objectives add p.lookup dummy "抬頭"
scoreboard objectives add p.dimension dummy "維度"
scoreboard objectives add p.actionbar dummy "在動作欄顯示的標題"

# 私有計分項
scoreboard objectives add cod.sneak minecraft.custom:minecraft.sneak_time "潛行時長"

function cod:loop
function cod:actionbar

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76坐標顯示\u00a7e更新完畢"