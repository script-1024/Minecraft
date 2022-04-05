execute unless entity @s[tag=aj.rover.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"rover:animations/animation.rover.drill_open/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.rover.animations.animation.rover.drill_open
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.rover.drill] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3144
execute as @e[type=area_effect_cloud,tag=aj.rover.body] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3148
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3152
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3156
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3160
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3164
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3168
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3172
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3176
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3180
execute as @e[type=area_effect_cloud,tag=aj.rover.claw] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3184
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3188
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3192
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3196
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3200
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3204
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3208
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3212
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3216
execute as @e[type=area_effect_cloud,tag=aj.rover.seat] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3220
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drill_open/__generated__/execute/3224