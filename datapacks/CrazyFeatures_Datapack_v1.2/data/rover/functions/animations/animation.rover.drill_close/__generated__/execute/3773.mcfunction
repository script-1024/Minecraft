execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.drill_door_left,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 0..6 run tp @s ^-0.359 ^-1.418 ^0.313 ~ ~