execute if score #this.aj.anim aj.i matches 0..21 run function demon:animations/animation.demon.scream/__generated__/execute/4342
execute if score #this.aj.anim aj.i matches 22..42 run function demon:animations/animation.demon.scream/__generated__/execute/4389
execute as @e[type=armor_stand,tag=aj.demon.head,distance=..6.2] if score @s aj.id = #this.aj.id aj.i run tp @s ~ ~ ~ ~ ~
execute store result entity @s Air short 1 run time query gametime