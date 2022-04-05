tp @s ^0.25 ^-0.481 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.walk/__generated__/execute/1395
execute store result entity @s Air short 1 run time query gametime