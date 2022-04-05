data modify entity @s Pose.Head set value [0.007f,0.001f,-5f]
execute as @e[type=armor_stand,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~