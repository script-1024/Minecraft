tp @s ~ ~ ~ ~ ~
scoreboard players operation @s aj.id = #last_model.id aj.i
tag @s add aj.state.default
execute as @e[type=armor_stand,tag=aj.demon.arm_left_2,tag=new,distance=..6.2] run function demon:summon_model/__generated__/execute/10
execute store result entity @s Air short 1 run time query gametime
tag @s remove new