tp @s ^-0.605 ^0.01 ^0.003 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.walk/__generated__/execute/1403
execute store result entity @s Air short 1 run time query gametime