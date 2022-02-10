scoreboard players set @s lh.placeHopper 0

summon bat ^ ^0.1 ^0.1 {NoAI:1b,Silent:1b,Tags:[lh,new]}

execute as @e[tag=lh,limit=1,sort=nearest] at @s run function lh:align

tag @s remove lh.wait