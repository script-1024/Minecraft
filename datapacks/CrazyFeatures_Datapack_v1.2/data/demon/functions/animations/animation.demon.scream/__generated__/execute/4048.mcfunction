tp @s ^-0.584 ^0.028 ^-0.14 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4049
execute store result entity @s Air short 1 run time query gametime