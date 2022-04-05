execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.rover.arm_1,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.057f,0f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-1.417 ^-0.562 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-1.381 ^-0.562 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-1.337 ^-0.562 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-1.284 ^-0.562 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-1.224 ^-0.562 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-1.157 ^-0.562 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-1.088 ^-0.563 ~ ~