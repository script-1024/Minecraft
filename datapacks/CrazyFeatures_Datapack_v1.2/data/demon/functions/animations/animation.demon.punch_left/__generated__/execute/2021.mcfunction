tp @s ^-0.4 ^0.489 ^0.008 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2022
execute store result entity @s Air short 1 run time query gametime