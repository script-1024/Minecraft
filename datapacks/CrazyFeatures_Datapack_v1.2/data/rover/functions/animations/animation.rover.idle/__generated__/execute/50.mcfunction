tp @s ^0.938 ^-1.918 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel2,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.idle/__generated__/execute/51
execute store result entity @s Air short 1 run time query gametime