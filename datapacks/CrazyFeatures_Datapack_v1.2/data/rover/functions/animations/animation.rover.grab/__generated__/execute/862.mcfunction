execute if score #this.aj.anim aj.i matches 70 as @e[type=armor_stand,tag=aj.rover.drill,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 70..75 run tp @s ^0 ^-0.855 ^-1.25 ~ ~