tp @s ^0.397 ^0.489 ^0.007 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/1990
execute store result entity @s Air short 1 run time query gametime