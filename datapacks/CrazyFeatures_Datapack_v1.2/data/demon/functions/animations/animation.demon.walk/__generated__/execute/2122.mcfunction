execute if score #this.aj.anim aj.i matches 0..19 run function demon:animations/animation.demon.walk/__generated__/execute/2123
execute if score #this.aj.anim aj.i matches 20..39 run function demon:animations/animation.demon.walk/__generated__/execute/2166
execute as @e[type=armor_stand,tag=aj.demon.arm_right_1,distance=..5.14] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime