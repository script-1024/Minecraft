tp @s ~ ~ ~ ~ ~
scoreboard players operation @s aj.id = #last_model.id aj.i
tag @s add aj.state.door_open
execute as @e[type=armor_stand,tag=aj.rover.claw_grab_point,tag=new,distance=..8.39] run function rover:summon_model/__generated__/execute/130
execute store result entity @s Air short 1 run time query gametime
tag @s remove new