execute if score #this.aj.anim aj.i matches 0..9 run function rover:animations/animation.rover.drill_open/__generated__/execute/610
execute if score #this.aj.anim aj.i matches 10..19 run function rover:animations/animation.rover.drill_open/__generated__/execute/622
execute as @e[type=armor_stand,tag=aj.rover.drill_door_right,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime