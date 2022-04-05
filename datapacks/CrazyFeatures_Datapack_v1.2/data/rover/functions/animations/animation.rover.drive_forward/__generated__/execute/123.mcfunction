tp @s ^0.937 ^-1.543 ^1.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel3,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/124
execute store result entity @s Air short 1 run time query gametime