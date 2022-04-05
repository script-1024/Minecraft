execute unless entity @s[tag=aj.demon.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"demon:animations/%animation_name/set_state/green","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"demon","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s remove aj.state.default
tag @s remove aj.state.red
tag @s add aj.state.green
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/131
execute as @e[type=armor_stand,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/132
execute as @e[type=armor_stand,tag=aj.demon.arm_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/133
execute as @e[type=armor_stand,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/134
execute as @e[type=armor_stand,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/135
execute as @e[type=armor_stand,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/136
execute as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/137
execute as @e[type=armor_stand,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/138
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/139
execute as @e[type=armor_stand,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/140