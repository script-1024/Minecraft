tp @s ^-0.203 ^-1.144 ^0.087 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.walk/__generated__/execute/1391
execute store result entity @s Air short 1 run time query gametime