tp @s ^-0.188 ^-1.121 ^0.188 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4037
execute store result entity @s Air short 1 run time query gametime