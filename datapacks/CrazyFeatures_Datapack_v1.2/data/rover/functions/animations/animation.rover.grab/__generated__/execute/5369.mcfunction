execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 6 as @e[type=armor_stand,tag=aj.rover.claw_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0.057f,0f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0.094 ^0.146 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0.094 ^0.258 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0.094 ^0.395 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0.094 ^0.56 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0.094 ^0.751 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0.094 ^0.955 ^-0.563 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.094 ^1.167 ^-0.56 ~ ~