scoreboard players set @s lh.placeHopper 0

summon armor_stand ^ ^0.1 ^0.1 {Small:1b,Invisible:1b,Invulnerable:1b,Tags:[lh,new],CustomName:' "■" ',CustomNameVisible:1b}

execute as @e[tag=lh,limit=1,sort=nearest] at @s run function lh:align

tag @s remove lh.wait