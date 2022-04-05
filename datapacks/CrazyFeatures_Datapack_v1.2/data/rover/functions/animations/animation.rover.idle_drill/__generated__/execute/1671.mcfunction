tp @s ^-0.094 ^0.145 ^-0.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.idle_drill/__generated__/execute/1672
execute store result entity @s Air short 1 run time query gametime