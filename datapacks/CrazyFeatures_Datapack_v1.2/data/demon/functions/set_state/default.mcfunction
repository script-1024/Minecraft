execute unless entity @s[tag=aj.demon.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"demon:animations/%animation_name/set_state/default","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"demon","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s remove aj.state.red
tag @s remove aj.state.green
tag @s add aj.state.default
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.demon.body,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/109
execute as @e[type=armor_stand,tag=aj.demon.arm_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/110
execute as @e[type=armor_stand,tag=aj.demon.arm_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/111
execute as @e[type=armor_stand,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/112
execute as @e[type=armor_stand,tag=aj.demon.leg_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/113
execute as @e[type=armor_stand,tag=aj.demon.leg_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/114
execute as @e[type=armor_stand,tag=aj.demon.leg_left_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/115
execute as @e[type=armor_stand,tag=aj.demon.leg_left_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/116
execute as @e[type=armor_stand,tag=aj.demon.arm_right_2,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/117
execute as @e[type=armor_stand,tag=aj.demon.arm_right_1,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run function demon:set_state/__generated__/execute/118