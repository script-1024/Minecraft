scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4056
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4151
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4246
execute as @e[type=area_effect_cloud,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4341
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4436
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4531
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4625
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4720
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4815
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.scream/__generated__/execute/4910
scoreboard players add @s aj.i 1
execute if entity @s[tag=STOP_ANIM] run function demon:animations/animation.demon.scream/__generated__/execute/5005
execute if score #this.aj.anim aj.i matches 43.. run function demon:animations/animation.demon.scream/__generated__/execute/5006