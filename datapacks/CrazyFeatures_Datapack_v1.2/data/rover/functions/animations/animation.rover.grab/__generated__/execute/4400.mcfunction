execute if score #this.aj.anim aj.i matches 85 as @e[type=armor_stand,tag=aj.rover.body,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 85..90 run tp @s ^0 ^0.02 ^-0.188 ~ ~