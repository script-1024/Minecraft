tp @s ^-0.4 ^0.486 ^0.06 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.walk/__generated__/execute/1407
execute store result entity @s Air short 1 run time query gametime