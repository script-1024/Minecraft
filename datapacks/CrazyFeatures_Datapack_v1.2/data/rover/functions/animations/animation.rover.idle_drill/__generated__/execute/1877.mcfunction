execute if score #this.aj.anim aj.i matches 8 as @e[type=armor_stand,tag=aj.rover.wheel6,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 8..14 run tp @s ^-1.281 ^-1.543 ^-0.062 ~ ~