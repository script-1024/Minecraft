#> 超导 78
#物抗減少40% 持續12秒 造成範圍冰傷

execute unless score @s timer.superconduct matches 1.. scoreboard players remove @s entity.res.phys 40
scoreboard players set @s timer.superconduct 120
execute at @s as @e

# 剧变反应
function ys:entity/set/cataclysmic
function ys:entity/damage