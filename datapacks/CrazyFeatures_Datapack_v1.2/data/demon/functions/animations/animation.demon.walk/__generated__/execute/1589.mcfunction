execute if score #this.aj.anim aj.i matches 0..19 run function demon:animations/animation.demon.walk/__generated__/execute/1590
execute if score #this.aj.anim aj.i matches 20..39 run function demon:animations/animation.demon.walk/__generated__/execute/1633
execute as @e[type=armor_stand,tag=aj.demon.head,distance=..5.14] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime