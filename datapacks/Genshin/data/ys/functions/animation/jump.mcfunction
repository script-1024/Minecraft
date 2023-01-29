schedule function ys:animation/jump 1t
execute as @a[tag=ys] if data entity @s RootVehicle if score @s ys.ani.type matches 3 if score @s ys.cd.jump matches 1.. run scoreboard players add @s ys.ani 1