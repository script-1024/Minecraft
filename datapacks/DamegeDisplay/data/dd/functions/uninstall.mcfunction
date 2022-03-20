scoreboard objectives remove dd.preHealth
scoreboard objectives remove dd.nowHealth
scoreboard objectives remove dd.preDamge
scoreboard objectives remove dd.nowDamge
scoreboard objectives remove dd.timer

team remove dd

tag @e remove tracked

kill @e[tag=dd]

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76傷害顯示\u00a7e卸載完畢"