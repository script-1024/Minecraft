execute if score #this.aj.anim aj.i matches 14 as @e[type=armor_stand,tag=aj.rover.claw_right,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [-180f,0f,-180f]
execute if score #this.aj.anim aj.i matches 14..20 run tp @s ^-0.094 ^0.145 ^-0.563 ~ ~