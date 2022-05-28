scoreboard objectives add dd.nowHealth dummy
scoreboard objectives add dd.preHealth dummy
scoreboard objectives add dd.nowDamage dummy
scoreboard objectives add dd.preDamage dummy
scoreboard objectives add dd.timer dummy

team add dd
team modify dd color yellow

function dd:timer

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76傷害顯示\u00a7e讀取完畢"