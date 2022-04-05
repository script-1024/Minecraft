execute if score #this.aj.anim aj.i matches 0..14 run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1413
execute if score #this.aj.anim aj.i matches 15..29 run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1433
execute as @e[type=armor_stand,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime