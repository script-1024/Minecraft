tp @s ^0 ^-1.543 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.body,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/140
execute store result entity @s Air short 1 run time query gametime