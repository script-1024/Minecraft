tp @s ^0 ^-1.042 ^-0.562 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.release/__generated__/execute/9951
execute store result entity @s Air short 1 run time query gametime