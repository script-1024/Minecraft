scoreboard objectives add p.sneak minecraft.custom:minecraft.sneak_time "潛行時長"
#scoreboard objectives add p.chatCd dummy "聊天室通知冷卻"
scoreboard objectives add cb.cd dummy

function cb:timer
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76箱船切換\u00a7e讀取完畢"