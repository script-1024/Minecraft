#> 蒸发 04

# 火被水克制
scoreboard players operation @s element.pyro /= #2 const
scoreboard players operation @s element.hydro -= @s element.pyro
scoreboard players set @s element.pyro 0
execute unless score @s element.state matches 3 run scoreboard players set @s element.hydro 0

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