execute as @a at @s unless score @s p.sneak matches 0 positioned ~ ~2 ~ if entity @s[dy=-0.3] run scoreboard players set @s p.sneak 0

execute as @a at @s if score @s p.sneak matches 12.. if entity @e[type=boat,distance=..1.5] if data entity @s SelectedItem{id:"minecraft:chest"} run function cb:chest/init
execute as @a at @s if score @s p.sneak matches 12.. if entity @e[type=chest_boat,distance=..1.5] unless data entity @s SelectedItem run function cb:boat/init

execute at @a as @e[tag=drop,distance=..12] at @s facing entity @p feet run tp ^ ^ ^0.5