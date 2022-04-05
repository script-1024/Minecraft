tp @s ^0 ^-0.512 ^0 ~ ~
execute as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4017
execute store result entity @s Air short 1 run time query gametime