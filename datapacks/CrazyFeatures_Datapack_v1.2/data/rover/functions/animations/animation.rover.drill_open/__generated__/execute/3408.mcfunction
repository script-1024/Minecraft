execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.rover.arm_4,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 21..26 run tp @s ^0 ^-0.855 ^-0.563 ~ ~