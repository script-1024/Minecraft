tp @s ^0 ^0.02 ^-0.188 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3644
execute store result entity @s Air short 1 run time query gametime