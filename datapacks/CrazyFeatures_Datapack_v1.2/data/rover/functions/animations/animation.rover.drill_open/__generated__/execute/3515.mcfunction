execute if score #this.aj.anim aj.i matches 0..13 run function rover:animations/animation.rover.drill_open/__generated__/execute/3516
execute if score #this.aj.anim aj.i matches 14..26 run function rover:animations/animation.rover.drill_open/__generated__/execute/3523
execute as @e[type=armor_stand,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime