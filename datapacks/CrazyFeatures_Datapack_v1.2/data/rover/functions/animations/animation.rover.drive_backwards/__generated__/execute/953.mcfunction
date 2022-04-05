tp @s ^1.281 ^-1.543 ^-1.562 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/954
execute store result entity @s Air short 1 run time query gametime