tp @s ^-0.25 ^-0.48 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2591
execute store result entity @s Air short 1 run time query gametime