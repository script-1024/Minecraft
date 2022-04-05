scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/193
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/314
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/438
execute as @e[type=area_effect_cloud,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/557
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/689
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/807
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/903
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/1021
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/1109
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.idle/__generated__/execute/1241
scoreboard players add @s aj.i 1
execute if score @s aj.i matches 61.. run scoreboard players set @s aj.i 0