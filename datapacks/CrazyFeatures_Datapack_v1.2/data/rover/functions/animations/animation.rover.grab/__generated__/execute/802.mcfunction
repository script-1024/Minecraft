data modify entity @s Pose.Head set value [0f,0f,0f]
execute as @e[type=armor_stand,tag=aj.rover.claw_right,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~