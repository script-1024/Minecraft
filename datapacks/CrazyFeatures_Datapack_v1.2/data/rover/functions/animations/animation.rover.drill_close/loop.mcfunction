scoreboard players operation #this.aj.id aj.i = @s aj.id
scoreboard players operation #this.aj.anim aj.i = @s aj.i
execute as @e[type=area_effect_cloud,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3723
execute as @e[type=area_effect_cloud,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3754
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3771
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3805
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3839
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3856
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3873
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3890
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3907
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3924
execute as @e[type=area_effect_cloud,tag=aj.rover.claw,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3941
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3958
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3975
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/3992
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4009
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4026
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4043
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4060
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4077
execute as @e[type=area_effect_cloud,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4094
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_close/__generated__/execute/4111
scoreboard players add @s aj.i 1
execute if score #this.aj.anim aj.i matches 27.. run tag @s remove aj.rover.animations.animation.rover.drill_close