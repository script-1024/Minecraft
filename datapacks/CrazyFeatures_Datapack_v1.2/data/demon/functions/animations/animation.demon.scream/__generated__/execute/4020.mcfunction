tp @s ^0.397 ^0.488 ^0.024 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4021
execute store result entity @s Air short 1 run time query gametime