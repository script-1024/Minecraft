execute if score #this.aj.anim aj.i matches 0..17 run function demon:animations/animation.demon.slam/__generated__/execute/3936
execute if score #this.aj.anim aj.i matches 18..34 run function demon:animations/animation.demon.slam/__generated__/execute/3975
execute as @e[type=armor_stand,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime