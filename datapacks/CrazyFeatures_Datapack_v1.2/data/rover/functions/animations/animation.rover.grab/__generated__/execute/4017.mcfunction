execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.rover.arm_5,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.057f,0f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-1.072 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-0.961 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-0.824 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-0.659 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-0.468 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-0.264 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-0.051 ^-0.561 ~ ~