execute if score #this.aj.anim aj.i matches 0..30 run function demon:animations/animation.demon.idle/__generated__/execute/1110
execute if score #this.aj.anim aj.i matches 31..60 run function demon:animations/animation.demon.idle/__generated__/execute/1177
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime