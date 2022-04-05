execute if score #this.aj.anim aj.i matches 20 as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [7.153f,0f,0f]
execute if score #this.aj.anim aj.i matches 21 as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [7.382f,0f,0f]
execute if score #this.aj.anim aj.i matches 22 as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [7.5f,0f,0f]
execute if score #this.aj.anim aj.i matches 20 run tp @s ^0 ^-0.501 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 21..25 run tp @s ^0 ^-0.48 ^-0.563 ~ ~