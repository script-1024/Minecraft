execute unless entity @s[tag=aj.rover.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"rover:animations/%animation_name/set_state/door_open","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s remove aj.state.door_closed
tag @s add aj.state.door_open
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/163
execute as @e[type=armor_stand,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/164
execute as @e[type=armor_stand,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/165
execute as @e[type=armor_stand,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/166
execute as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/167
execute as @e[type=armor_stand,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/168
execute as @e[type=armor_stand,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/169
execute as @e[type=armor_stand,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/170
execute as @e[type=armor_stand,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/171
execute as @e[type=armor_stand,tag=aj.rover.arm_6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/172
execute as @e[type=armor_stand,tag=aj.rover.claw,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/173
execute as @e[type=armor_stand,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/174
execute as @e[type=armor_stand,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/175
execute as @e[type=armor_stand,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/176
execute as @e[type=armor_stand,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/177
execute as @e[type=armor_stand,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/178
execute as @e[type=armor_stand,tag=aj.rover.wheel4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/179
execute as @e[type=armor_stand,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/180
execute as @e[type=armor_stand,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/181
execute as @e[type=armor_stand,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/182
execute as @e[type=armor_stand,tag=aj.rover.claw_grab_point,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/183