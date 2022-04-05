kill @e[tag=dpa,limit=1,sort=nearest,distance=..4]
execute as @e[type=#undead,distance=..4] run effect give @s instant_health 1 0 true
execute as @e[type=!#undead,type=!player,distance=..4] run effect give @s instant_damage 1 0 true
tag @s remove drop