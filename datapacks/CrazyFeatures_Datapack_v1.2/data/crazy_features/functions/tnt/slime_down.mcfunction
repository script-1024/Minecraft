execute as @s at @s if block ~ ~-1 ~ #crazy_features:passable run tp @s ~ ~-1 ~
kill @s[y=1,dy=-1000]
execute as @s at @s if block ~ ~-1 ~ #crazy_features:passable run function crazy_features:tnt/slime_down
