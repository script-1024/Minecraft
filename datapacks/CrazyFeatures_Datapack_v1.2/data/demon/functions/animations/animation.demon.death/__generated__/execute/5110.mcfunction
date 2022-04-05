execute if score #this.aj.anim aj.i matches 0..12 run function demon:animations/animation.demon.death/__generated__/execute/5111
execute if score #this.aj.anim aj.i matches 13..24 run function demon:animations/animation.demon.death/__generated__/execute/5140
execute as @e[type=armor_stand,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime