execute if score #this.aj.anim aj.i matches 0..50 run function rover:animations/animation.rover.grab/__generated__/execute/1334
execute if score #this.aj.anim aj.i matches 51..100 run function rover:animations/animation.rover.grab/__generated__/execute/1417
execute as @e[type=armor_stand,tag=aj.rover.arm_3,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime