tp @s ^0 ^-1.074 ^-0.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3672
execute store result entity @s Air short 1 run time query gametime