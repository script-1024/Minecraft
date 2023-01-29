execute as @e[tag=cjt,tag=!p] at @s run function cjt:place
execute as @e[tag=cjt,tag=p] at @s run function cjt:main

execute as @e[tag=cjt_item] at @s if data entity @s Item{id:"minecraft:stone"} unless entity @e[tag=cjt,distance=..3] run kill @s

execute at @a as @e[tag=drop,distance=..12] at @s facing entity @p feet run tp ^ ^ ^0.5

clear @a paper{cl:1}
clear @a barrel{display:{Name:'{"text":"§8拆解台§f"}'}}