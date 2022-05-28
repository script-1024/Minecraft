scoreboard players add @a[tag=wait] tp.timer 1
execute as @a[tag=wait] if score @s tp.timer matches 3.. run tag @s remove wait
schedule function tp:timer 60s