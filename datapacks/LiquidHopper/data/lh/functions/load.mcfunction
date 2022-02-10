scoreboard objectives add lh.placeHopper minecraft.used:minecraft.hopper "放置漏斗"

scoreboard objectives add lh.settings dummy
execute unless score #debug lh.settings matches 0..1 run scoreboard players set #debug lh.settings 0
execute unless score #kill lh.settings matches 0..1 run scoreboard players set #kill lh.settings 1

scoreboard objectives add lh.x dummy
scoreboard objectives add lh.y dummy
scoreboard objectives add lh.z dummy
scoreboard objectives add lh.tmp dummy
scoreboard objectives add lh.try dummy

scoreboard objectives add lh.const dummy
scoreboard players reset * lh.const
scoreboard players set #-1 lh.const -1
scoreboard players set #5 lh.const 5
scoreboard players set #10 lh.const 10

function lh:timer

tellraw @a[gamemode=creative,tag=!op] "\u00a7b提示> \u00a76液體漏斗\u00a7e讀取完畢"

tellraw @a[tag=op] "\u00a7b提示> \u00a76液體漏斗\u00a7e讀取完畢"