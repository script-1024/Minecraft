execute if score #this.aj.anim aj.i matches 45 as @e[type=armor_stand,tag=aj.rover.body,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 45..50 run tp @s ^0 ^-1.418 ^0 ~ ~