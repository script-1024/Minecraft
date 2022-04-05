execute if score #this.aj.anim aj.i matches 0..9 run function rover:animations/animation.rover.drill_open/__generated__/execute/1773
execute if score #this.aj.anim aj.i matches 10..19 run function rover:animations/animation.rover.drill_open/__generated__/execute/1776
execute as @e[type=armor_stand,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime