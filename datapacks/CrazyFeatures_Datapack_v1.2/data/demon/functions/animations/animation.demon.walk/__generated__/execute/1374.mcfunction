tp @s ^0.397 ^0.486 ^0.06 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.walk/__generated__/execute/1375
execute store result entity @s Air short 1 run time query gametime