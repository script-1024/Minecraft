execute if score #this.aj.anim aj.i matches 7 as @e[type=armor_stand,tag=aj.rover.wheel5,distance=..7.72] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 7..12 run tp @s ^-1.281 ^-1.543 ^1.938 ~ ~