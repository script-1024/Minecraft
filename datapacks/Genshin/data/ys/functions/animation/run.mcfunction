schedule function ys:animation/run 1t
execute as @a[tag=ys] if data entity @s RootVehicle if score @s ys.ani.type matches 2 run scoreboard players add @s ys.ani 1