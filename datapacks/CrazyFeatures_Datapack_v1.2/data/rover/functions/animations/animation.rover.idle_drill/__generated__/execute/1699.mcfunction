tp @s ^0 ^-2.168 ^0.313 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.idle_drill/__generated__/execute/1700
execute store result entity @s Air short 1 run time query gametime