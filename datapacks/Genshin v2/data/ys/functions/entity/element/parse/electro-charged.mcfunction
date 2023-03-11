#> 感电 18

scoreboard players set @s element.state 18
execute anchored eyes positioned ^ ^-0.3 ^ summon text_display run function ys:entity/element/show/electro-charged

tag @s add el.elc

# 剧变反应
function ys:entity/set/cataclysmic
function ys:entity/damage