tp @s ^0 ^-1.418 ^0.375 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.grab/__generated__/execute/1844
execute store result entity @s Air short 1 run time query gametime