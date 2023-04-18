#> 超导 78
#物抗減少40% 持續12秒 造成範圍冰傷

execute if score @s element.state matches 15 run scoreboard players set @s element.cryo 0
execute if score @s element.state matches 63 run scoreboard players set @s element.electro 0
scoreboard players remove @s element.electro 800
scoreboard players remove @s element.pyro 800

execute unless score @s timer.superconduct matches 1.. run scoreboard players remove @s entity.res.phys 40
scoreboard players set @s timer.superconduct 120
execute as @e[type=!#ys:non-living,distance=..2] at @s on attacker run damage @e[limit=1,type=!#ys:non-living] 0.01 generic by @s
execute as @e[type=!#ys:non-living,distance=..2] run function ys:entity/element/get/cryo/weak

# 剧变反应
function ys:entity/set/cataclysmic
function ys:entity/damage