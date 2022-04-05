tp @s ^0 ^-1.23 ^0.938 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/268
execute store result entity @s Air short 1 run time query gametime