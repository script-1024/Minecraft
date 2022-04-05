execute unless entity @s[tag=aj.demon.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"demon:animations/animation.demon.punch_left/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"demon","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.demon.animations.animation.demon.punch_left
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.demon.body] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/1985
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/1989
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/1993
execute as @e[type=area_effect_cloud,tag=aj.demon.head] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/1997
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2001
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2005
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2009
execute as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2013
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2017
execute as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1] if score @s aj.id = #this.aj.id aj.i run function demon:animations/animation.demon.punch_left/__generated__/execute/2021