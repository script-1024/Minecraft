tp @s ^0.214 ^-1.113 ^0.218 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2603
execute store result entity @s Air short 1 run time query gametime