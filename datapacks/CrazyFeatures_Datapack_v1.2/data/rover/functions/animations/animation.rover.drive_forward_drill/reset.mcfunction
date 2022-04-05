execute unless entity @s[tag=aj.rover.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"rover:animations/animation.rover.drive_forward_drill/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.rover.animations.animation.rover.drive_forward_drill
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.rover.drill] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/995
execute as @e[type=area_effect_cloud,tag=aj.rover.body] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/999
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1003
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1007
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1011
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1015
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1019
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1023
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1027
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1031
execute as @e[type=area_effect_cloud,tag=aj.rover.claw] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1035
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1039
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1043
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1047
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1051
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1055
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1059
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1063
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1067
execute as @e[type=area_effect_cloud,tag=aj.rover.seat] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1071
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward_drill/__generated__/execute/1075