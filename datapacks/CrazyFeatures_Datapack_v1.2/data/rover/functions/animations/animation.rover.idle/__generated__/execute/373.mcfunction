execute if score #this.aj.anim aj.i matches 0 as @e[type=armor_stand,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run data modify entity @s Pose.Head set value [0f,0f,0f]
execute if score #this.aj.anim aj.i matches 0..5 run tp @s ^-1.219 ^-1.543 ^1.75 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime