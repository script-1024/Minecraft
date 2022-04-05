data modify entity @s Pose.Head set value [180f,0f,-180f]
execute as @e[type=armor_stand,tag=aj.rover.wheel4,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~