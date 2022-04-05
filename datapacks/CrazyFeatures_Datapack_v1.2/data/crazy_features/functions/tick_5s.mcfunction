function crazy_features:crafting
effect give @e[tag=invis] invisibility 99 9 true

execute as @a[tag=!cf_init] at @s run function crazy_features:init_player

schedule function crazy_features:tick_5s 5s
