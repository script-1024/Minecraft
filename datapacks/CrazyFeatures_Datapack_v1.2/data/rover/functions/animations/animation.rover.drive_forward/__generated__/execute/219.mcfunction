execute if score #this.aj.anim aj.i matches 10 as @e[type=armor_stand,tag=aj.rover.body,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 10..19 run tp @s ^0 ^-1.543 ^0 ~ ~