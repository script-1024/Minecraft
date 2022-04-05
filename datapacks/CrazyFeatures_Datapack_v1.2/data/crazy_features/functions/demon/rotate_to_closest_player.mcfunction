execute at @s positioned ^ ^ ^4 run tag @a[distance=..30] add md_rotate_target
execute at @s run tp @e[type=zombie,tag=md_boss_ai,limit=1,sort=nearest] ~ ~ ~ facing entity @a[tag=md_rotate_target,limit=1,sort=nearest]
execute at @s run tp @s ~ ~ ~ facing entity @a[tag=md_rotate_target,limit=1,sort=nearest]
execute at @s run tp @e[type=zombie,tag=md_boss_ai,limit=1,sort=nearest] ~ ~ ~ ~ 0
execute at @s run tp @s ~ ~ ~ ~ 0
tag @a[tag=md_rotate_target] remove md_rotate_target
