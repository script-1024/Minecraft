scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2614
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2671
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2728
execute as @e[type=area_effect_cloud,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2785
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2842
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2894
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/2946
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/3003
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/3060
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_right/__generated__/execute/3117
scoreboard players add @s aj.i 1
execute if entity @s[tag=STOP_ANIM] run function demon:animations/animation.demon.punch_right/__generated__/execute/3174
execute if score #this.aj.anim aj.i matches 24.. run function demon:animations/animation.demon.punch_right/__generated__/execute/3175