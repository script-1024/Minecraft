execute unless entity @s[tag=aj.demon.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"demon:animations/animation.demon.slam/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"demon","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.demon.animations.animation.demon.slam
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.demon.body] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3180
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3184
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3188
execute as @e[type=area_effect_cloud,tag=aj.demon.head] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3192
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3196
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3200
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3204
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3208
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3212
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.slam/__generated__/execute/3216