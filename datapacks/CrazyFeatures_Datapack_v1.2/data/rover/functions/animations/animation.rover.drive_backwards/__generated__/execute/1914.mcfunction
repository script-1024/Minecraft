tp @s ^0 ^-0.855 ^1.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1915
execute store result entity @s Air short 1 run time query gametime