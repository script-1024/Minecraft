execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.drill_door_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 0 run tp @s ^0 ^-1.418 ^0 ~ ~
execute if score #this.aj.anim aj.i matches 1 run tp @s ^0 ^-1.418 ^-0.013 ~ ~
execute if score #this.aj.anim aj.i matches 2 run tp @s ^0 ^-1.418 ^-0.026 ~ ~
execute if score #this.aj.anim aj.i matches 3 run tp @s ^0 ^-1.418 ^-0.038 ~ ~
execute if score #this.aj.anim aj.i matches 4 run tp @s ^0 ^-1.418 ^-0.05 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-1.418 ^-0.063 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0.003 ^-1.418 ^-0.063 ~ ~