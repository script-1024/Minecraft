execute if score #this.aj.anim aj.i matches 0..7 run function rover:animations/animation.rover.idle_drill/__generated__/execute/1883
execute if score #this.aj.anim aj.i matches 8..14 run function rover:animations/animation.rover.idle_drill/__generated__/execute/1886
execute as @e[type=armor_stand,tag=aj.rover.wheel7,distance=..8.39] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime