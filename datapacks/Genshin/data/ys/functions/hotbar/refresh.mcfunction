#execute as @a[tag=ys] at @s if score @s ys.hotbar matches 0 run function ys:hotbar/0
execute as @a[tag=ys] at @s if score @s ys.hotbar matches 1 run function ys:hotbar/1
schedule function ys:hotbar/refresh 5t