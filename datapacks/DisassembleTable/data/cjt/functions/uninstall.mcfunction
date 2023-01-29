execute as @e[tag=cjt] at @s run function cjt:remove

scoreboard objectives remove cjt.book
scoreboard objectives remove cjt.empty
scoreboard objectives remove cjt.slot
scoreboard objectives remove cjt.in
scoreboard objectives remove cjt.out
scoreboard objectives remove cjt.stage
scoreboard objectives remove cjt.tmp
scoreboard objectives remove cjt.mat
scoreboard objectives remove cjt.sw

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76拆解台\u00a7e卸載完畢"