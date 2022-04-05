tp @s ^-1.281 ^-1.543 ^-0.062 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3708
execute store result entity @s Air short 1 run time query gametime