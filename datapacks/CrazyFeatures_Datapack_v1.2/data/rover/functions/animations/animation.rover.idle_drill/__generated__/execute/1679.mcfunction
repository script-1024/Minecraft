tp @s ^1.281 ^-1.543 ^-0.062 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.idle_drill/__generated__/execute/1680
execute store result entity @s Air short 1 run time query gametime