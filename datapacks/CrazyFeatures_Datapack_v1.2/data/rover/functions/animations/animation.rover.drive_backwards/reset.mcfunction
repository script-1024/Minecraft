execute unless entity @s[tag=aj.rover.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"rover:animations/animation.rover.drive_backwards/reset","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]]
scoreboard players set @s aj.i 0
tag @s remove aj.rover.animations.animation.rover.drive_backwards
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=area_effect_cloud,tag=aj.rover.drill] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1914
execute as @e[type=area_effect_cloud,tag=aj.rover.body] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1918
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1922
execute as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1926
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_1] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1930
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1934
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1938
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1942
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1946
execute as @e[type=area_effect_cloud,tag=aj.rover.arm_6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1950
execute as @e[type=area_effect_cloud,tag=aj.rover.claw] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1954
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_left] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1958
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_right] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1962
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel5] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1966
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel2] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1970
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1974
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel4] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1978
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel6] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1982
execute as @e[type=area_effect_cloud,tag=aj.rover.wheel7] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1986
execute as @e[type=area_effect_cloud,tag=aj.rover.seat] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1990
execute as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_backwards/__generated__/execute/1994