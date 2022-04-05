tp @s ^-0.603 ^0.059 ^-0.209 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/186
execute store result entity @s Air short 1 run time query gametime