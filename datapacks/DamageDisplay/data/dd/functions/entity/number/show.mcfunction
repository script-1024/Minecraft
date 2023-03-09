tag @s add e
execute unless score @s dd.element matches 0.. run scoreboard players set @s dd.element 0
execute anchored eyes positioned ^ ^-0.3 ^ summon text_display run function dd:entity/number/data