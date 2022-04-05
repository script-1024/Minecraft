tp @s ^0 ^-1.417 ^-0.562 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.grab/__generated__/execute/4150
execute store result entity @s Air short 1 run time query gametime