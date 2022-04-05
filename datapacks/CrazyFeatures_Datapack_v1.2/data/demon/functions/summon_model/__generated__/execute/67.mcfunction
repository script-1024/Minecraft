tp @s ~ ~ ~ ~ 0
tag @s add aj.state.green
execute store result score @s aj.id run scoreboard players add #last_model.id aj.i 1
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.body,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/69
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/72
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/75
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.head,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/78
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/81
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/84
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/87
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/90
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/93
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/96
tag @s remove new