tp @s ~ ~ ~ ~ 0
tag @s add aj.state.default
execute store result score @s aj.id run scoreboard players add #last_model.id aj.i 1
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.body,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/3
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/6
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/9
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.head,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/12
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/15
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/18
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/21
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/24
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/27
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/30
tag @s remove new