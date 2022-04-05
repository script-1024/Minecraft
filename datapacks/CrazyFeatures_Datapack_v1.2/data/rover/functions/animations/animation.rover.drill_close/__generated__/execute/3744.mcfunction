execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 14 run tp @s ^0 ^-0.855 ^1.628 ~ ~
execute if score #this.aj.anim aj.i matches 15 run tp @s ^0 ^-0.855 ^1.588 ~ ~
execute if score #this.aj.anim aj.i matches 16..20 run tp @s ^0 ^-0.855 ^1.563 ~ ~