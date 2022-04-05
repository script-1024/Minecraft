tp @s ^0.062 ^-0.168 ^0.063 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.player,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.idle/__generated__/execute/93
execute store result entity @s Air short 1 run time query gametime