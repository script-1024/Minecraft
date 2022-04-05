tp @s ^0.094 ^0.145 ^-0.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3189
execute store result entity @s Air short 1 run time query gametime