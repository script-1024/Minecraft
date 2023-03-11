#> 蒸发 04

execute if score @s element.state matches 32 run scoreboard players set @s timer.burning 0
execute anchored eyes positioned ^ ^-0.3 ^ summon text_display run function ys:entity/element/show/vaporize

execute store result score @s entity.damage on attacker run scoreboard players get @s entity.atk

execute if score @s element.state matches 3 run scoreboard players operation @s entity.damage *= #15 const
execute if score @s element.state matches 1 run scoreboard players operation @s entity.damage *= #20 const

scoreboard players operation @s entity.damage /= #10 const

# 增幅反应
function ys:entity/set/amplified
function ys:entity/damage

scoreboard players set @s element.state 0