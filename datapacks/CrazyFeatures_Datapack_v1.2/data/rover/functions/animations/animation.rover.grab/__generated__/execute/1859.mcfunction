tp @s ^0 ^-0.854 ^-0.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.grab/__generated__/execute/1860
execute store result entity @s Air short 1 run time query gametime