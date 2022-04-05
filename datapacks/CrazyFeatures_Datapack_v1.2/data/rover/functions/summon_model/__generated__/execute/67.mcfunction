tp @s ~ ~ ~ ~ 0
tag @s add aj.state.door_open
execute store result score @s aj.id run scoreboard players add #last_model.id aj.i 1
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.drill,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/69
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.body,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/72
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/75
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/78
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_1,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/81
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_2,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/84
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_3,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/87
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_4,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/90
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_5,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/93
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_6,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/96
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/99
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw_left,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/102
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw_right,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/105
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel5,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/108
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel2,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/111
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel3,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/114
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel4,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/117
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel6,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/120
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel7,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/123
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.seat,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/126
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/129
tag @s remove new