scoreboard objectives add ac.state dummy
scoreboard objectives add ac.timer dummy
scoreboard objectives add ac.bomb dummy

scoreboard objectives add ac trigger

execute unless score #active ac.state matches -2147483648..2147483647 run scoreboard players set #active ac.state 1

function ac:timer

tellraw @a[gamemode=creative,tag=!op] "\u00a7b提示> \u00a76苦力怕防爆\u00a7e讀取完畢"

tellraw @a[tag=op] "\u00a7b提示> \u00a76苦力怕防爆\u00a7e讀取完畢"