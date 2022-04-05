tp @s ^-0.938 ^-1.543 ^1.563 ~ ~
execute as @e[type=armor_stand,tag=aj.rover.wheel6,distance=..5.3] if score @s aj.id = #this.aj.id aj.i run function rover:animations/animation.rover.drive_forward/__generated__/execute/136
execute store result entity @s Air short 1 run time query gametime