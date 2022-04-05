tp @s ^0 ^0.117 ^0.938 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.claw_right,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.grab/__generated__/execute/802
execute store result entity @s Air short 1 run time query gametime