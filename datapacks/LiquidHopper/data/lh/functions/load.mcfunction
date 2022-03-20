scoreboard objectives add lh.placeHopper minecraft.used:minecraft.hopper "放置漏斗"

scoreboard objectives add lh.settings dummy
execute unless score debug lh.settings matches 0..1 run scoreboard players set debug lh.settings 0
execute unless score kill lh.settings matches 0..1 run scoreboard players set kill lh.settings 1
execute unless score y lh.settings matches -1000..1000 run scoreboard players set y lh.settings 675
execute unless score protect lh.settings matches 10.. run scoreboard players set protect lh.settings 20

scoreboard objectives add lh.x dummy
scoreboard objectives add lh.y dummy
scoreboard objectives add lh.z dummy
scoreboard objectives add lh.tmp dummy
scoreboard objectives add lh.protect dummy

scoreboard objectives add lh.cd dummy "放置冷卻"

scoreboard objectives add lh.const dummy
scoreboard players reset * lh.const
scoreboard players set #-1 lh.const -1
scoreboard players set #5 lh.const 5
scoreboard players set #10 lh.const 10

team add lh.empty "空"
team add lh.water "水源"
team add lh.lava "熔岩"

team modify lh.empty color yellow
team modify lh.water color blue
team modify lh.lava color gold

function lh:timer

tellraw @a[gamemode=creative,tag=!op] "\u00a7b提示> \u00a76液體漏斗\u00a7e讀取完畢"

tellraw @a[tag=op] "\u00a7b提示> \u00a76液體漏斗\u00a7e讀取完畢"