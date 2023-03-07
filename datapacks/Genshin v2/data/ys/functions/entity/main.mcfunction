execute if entity @s run function ys:entity/element/check
execute if entity @s[tag=!txt,tag=!data,type=!player,type=!#ys:non-living] run function ys:entity/element/display
execute if entity @s[type=player] run function ys:entity/player/main
execute as @e[tag=txt] at @s unless entity @e[type=#ys:living,distance=..3] run kill @s