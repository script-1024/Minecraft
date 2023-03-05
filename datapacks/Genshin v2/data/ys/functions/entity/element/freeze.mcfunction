execute if entity @s[tag=v] unless data entity @s Passengers run ride @p[tag=el.frz] mount @s

execute if score @s timer.freeze matches 0 if entity @s[tag=el.frz] run effect clear @s slowness
execute if score @s timer.freeze matches 0 if entity @s[tag=el.frz] run scoreboard players set @s element.hydro 0
execute if score @s timer.freeze matches 0 if entity @s[tag=ice] run kill @s
execute if score @s timer.freeze matches 0 run tag @s remove el.frz
