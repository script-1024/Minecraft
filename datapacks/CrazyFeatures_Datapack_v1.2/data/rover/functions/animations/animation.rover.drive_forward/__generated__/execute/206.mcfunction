execute if score #this.aj.anim aj.i matches 0..9 run function rover:animations/animation.rover.drive_forward/__generated__/execute/207
execute if score #this.aj.anim aj.i matches 10..19 run function rover:animations/animation.rover.drive_forward/__generated__/execute/210
execute as @e[type=armor_stand,tag=aj.rover.wheel6,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime