execute if score #this.aj.anim aj.i matches 0..11 run function demon:animations/animation.demon.punch_left/__generated__/execute/2455
execute if score #this.aj.anim aj.i matches 12..23 run function demon:animations/animation.demon.punch_left/__generated__/execute/2482
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime