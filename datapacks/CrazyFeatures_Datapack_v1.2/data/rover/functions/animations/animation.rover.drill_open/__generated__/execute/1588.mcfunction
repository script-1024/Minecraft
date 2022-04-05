execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.drill,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 0..4 run tp @s ^0 ^-0.855 ^1.625 ~ ~
execute if score #this.aj.anim aj.i matches 5 run tp @s ^0 ^-0.855 ^1.626 ~ ~
execute if score #this.aj.anim aj.i matches 6 run tp @s ^0 ^-0.855 ^1.681 ~ ~
execute if score #this.aj.anim aj.i matches 7 run tp @s ^0 ^-0.855 ^1.734 ~ ~
execute if score #this.aj.anim aj.i matches 8 run tp @s ^0 ^-0.855 ^1.789 ~ ~
execute if score #this.aj.anim aj.i matches 9 run tp @s ^0 ^-0.855 ^1.833 ~ ~