schedule function ys:animation/walk 3t
execute as @a[tag=ys] if data entity @s RootVehicle if score @s ys.ani.type matches 1 run scoreboard players add @s ys.ani 1