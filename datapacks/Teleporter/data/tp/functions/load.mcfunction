scoreboard objectives add tp trigger
scoreboard objectives add set trigger
scoreboard objectives add back trigger

scoreboard objectives add tp.x dummy
scoreboard objectives add tp.y dummy
scoreboard objectives add tp.z dummy
scoreboard objectives add tp.const dummy

scoreboard objectives add tmp.x dummy
scoreboard objectives add tmp.y dummy
scoreboard objectives add tmp.z dummy

scoreboard objectives add d.x dummy
scoreboard objectives add d.y dummy
scoreboard objectives add d.z dummy
scoreboard objectives add d.dimension dummy

scoreboard objectives add s.x dummy
scoreboard objectives add s.y dummy
scoreboard objectives add s.z dummy
scoreboard objectives add s.dimension dummy

scoreboard objectives add tp.timer dummy
scoreboard objectives add tp.death deathCount

scoreboard players set #-1 tp.const -1
scoreboard players set #2 tp.const 2

function tp:timer

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76傳送器\u00a7e更新完畢"