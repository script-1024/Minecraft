execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 7..11 run tp @s ^0 ^-0.855 ^1.563 ~ ~
execute if score #this.aj.anim aj.i matches 12 run tp @s ^0 ^-0.855 ^1.603 ~ ~
execute if score #this.aj.anim aj.i matches 13 run tp @s ^0 ^-0.855 ^1.647 ~ ~