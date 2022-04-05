tp @s ^-0.207 ^-1.118 ^0.202 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2006
execute store result entity @s Air short 1 run time query gametime