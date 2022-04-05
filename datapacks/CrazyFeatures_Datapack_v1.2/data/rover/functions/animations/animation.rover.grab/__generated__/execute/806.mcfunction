data modify entity @s Pose.Head set value [180f,0f,-180f]
execute as @e[type=armor_stand,tag=aj.rover.wheel5,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~