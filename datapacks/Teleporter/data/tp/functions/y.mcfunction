tp @s ~ 0 ~
execute if score @s tp.y matches 1.. run function tp:pos/y
execute if score @s tp.y matches ..-1 run function tp:neg/y