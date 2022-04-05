execute unless entity @s[tag=aj.rover.root_entity] run tellraw @a ["",[{"text":"[","color":"dark_gray"},{"text":"MCB-MODEL","color":"green"},{"text":" -> ","color":"light_purple"},{"text":"ROOT_EXECUTION_ERROR","color":"red"},{"text":"]","color":"dark_gray"}],"\n",{"text":"rover:animations/%animation_name/set_state/door_closed","color":"gold"}," ",{"text":"executed as non root entity.","color":"gray"},"\n",{"text":"Should be executed as ","color":"gray"},["",{"text":"model.","color":"gray"},{"text":"rover","color":"blue"},{"text":".root_entity","color":"gray"}]]
tag @s remove aj.state.door_open
tag @s add aj.state.door_closed
scoreboard players operation #this.aj.id aj.i = @s aj.id
execute as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/141
execute as @e[type=armor_stand,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/142
execute as @e[type=armor_stand,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/143
execute as @e[type=armor_stand,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/144
execute as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/145
execute as @e[type=armor_stand,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/146
execute as @e[type=armor_stand,tag=aj.rover.arm_3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/147
execute as @e[type=armor_stand,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/148
execute as @e[type=armor_stand,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/149
execute as @e[type=armor_stand,tag=aj.rover.arm_6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/150
execute as @e[type=armor_stand,tag=aj.rover.claw,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/151
execute as @e[type=armor_stand,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/152
execute as @e[type=armor_stand,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/153
execute as @e[type=armor_stand,tag=aj.rover.wheel5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/154
execute as @e[type=armor_stand,tag=aj.rover.wheel2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/155
execute as @e[type=armor_stand,tag=aj.rover.wheel3,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/156
execute as @e[type=armor_stand,tag=aj.rover.wheel4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/157
execute as @e[type=armor_stand,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/158
execute as @e[type=armor_stand,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/159
execute as @e[type=armor_stand,tag=aj.rover.seat,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/160
execute as @e[type=armor_stand,tag=aj.rover.claw_grab_point,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run function rover:set_state/__generated__/execute/161