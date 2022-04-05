tp @s ^0.584 ^0.028 ^-0.139 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3189
execute store result entity @s Air short 1 run time query gametime