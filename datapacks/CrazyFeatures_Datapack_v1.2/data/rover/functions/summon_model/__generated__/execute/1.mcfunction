tp @s ~ ~ ~ ~ 0
tag @s add aj.state.door_closed
execute store result score @s aj.id run scoreboard players add #last_model.id aj.i 1
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.drill,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/3
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.body,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/6
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.drill_door_left,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/9
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.drill_door_right,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/12
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_1,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/15
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_2,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/18
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_3,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/21
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_4,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/24
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_5,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/27
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.arm_6,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/30
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/33
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw_left,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/36
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw_right,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/39
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel5,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/42
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel2,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/45
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel3,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/48
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel4,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/51
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel6,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/54
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.wheel7,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/57
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.seat,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/60
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.rover.claw_grab_point,tag=new,distance=..8.39] positioned as @s run function rover:summon_model/__generated__/execute/63
tag @s remove new