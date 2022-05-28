tp @s 0 ~ ~
execute if score @s tp.x matches 1.. run function tp:pos/x
execute if score @s tp.x matches ..-1 run function tp:neg/x