tp @s ^0 ^-0.855 ^-1.25 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.drill,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/474
execute store result entity @s Air short 1 run time query gametime