execute unless entity @s[tag=aj.rover.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"rover:animations/animation.rover.drive_forward/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.rover.animations.animation.rover.drive_forward
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.rover.drill] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/393
execute as @e[type=area_effect_cloud,tag=aj.rover.body] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/397
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/401
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/405
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/409
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/413
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/417
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/421
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/425
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/429
execute as @e[type=area_effect_cloud,tag=aj.rover.claw] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/433
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/437
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/441
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/445
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/449
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/453
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/457
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/461
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/465
execute as @e[type=area_effect_cloud,tag=aj.rover.seat] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/469
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/473