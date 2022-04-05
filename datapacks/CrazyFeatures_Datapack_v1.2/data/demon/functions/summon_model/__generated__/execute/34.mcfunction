tp @s ~ ~ ~ ~ 0
tag @s add aj.state.red
execute store result score @s aj.id run scoreboard players add #last_model.id aj.i 1
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.body,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/36
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_left_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/39
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_left_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/42
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.head,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/45
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_right_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/48
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_right_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/51
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_left_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/54
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.leg_left_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/57
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_right_2,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/60
execute rotated as @s as @e[type=area_effect_cloud,tag=aj.demon.arm_right_1,tag=new,distance=..6.2] positioned as @s run function demon:summon_model/__generated__/execute/63
tag @s remove new