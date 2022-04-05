tp @s ^-1.219 ^-1.543 ^1.75 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1068
execute store result entity @s Air short 1 run time query gametime