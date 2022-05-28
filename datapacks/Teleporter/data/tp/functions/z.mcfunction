tp @s ~ ~ 0
execute if score @s tp.z matches 1.. run function tp:pos/z
execute if score @s tp.z matches ..-1 run function tp:neg/z