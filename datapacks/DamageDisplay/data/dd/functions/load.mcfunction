scoreboard objectives add entity.health.current dummy
scoreboard objectives add entity.health.prev dummy
scoreboard objectives add entity.health.diff dummy

scoreboard objectives add dd.timer dummy
scoreboard objectives add const dummy

scoreboard players set #-1 const -1
scoreboard players set #3 const 3
scoreboard players set #10 const 10

function dd:timer

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76傷害顯示\u00a7e讀取完畢"