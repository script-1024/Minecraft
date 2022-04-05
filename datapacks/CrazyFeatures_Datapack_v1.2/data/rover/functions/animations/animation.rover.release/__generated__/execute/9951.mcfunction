data modify entity @s Pose.Head set value [0.007f,0f,0f]
execute as @e[type=armor_stand,tag=aj.rover.arm_2,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~