tp @s ^0 ^-1.418 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.body,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.grab/__generated__/execute/758
execute store result entity @s Air short 1 run time query gametime