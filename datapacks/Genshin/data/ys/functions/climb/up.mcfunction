#alias entity char @e[limit=1,sort=nearest,tag=char]

tag @s add climb
#data modify entity @e[limit=1,sort=nearest,tag=char] Motion[1] set value 0.1d
scoreboard players set @s ys.dy 250