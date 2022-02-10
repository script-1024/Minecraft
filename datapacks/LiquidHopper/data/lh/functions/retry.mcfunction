tp @s ~ ~ ~ ~90 0
tp @s ^ ^ ^0.5
function lh:align
execute if score @s lh.try matches 1.. run scoreboard players remove @s lh.try 1