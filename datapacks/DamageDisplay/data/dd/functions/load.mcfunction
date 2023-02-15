scoreboard objectives add entity.health.current dummy
scoreboard objectives add entity.health.prev dummy
scoreboard objectives add entity.health.diff dummy

scoreboard objectives add dd.timer dummy

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76傷害顯示\u00a7e讀取完畢"