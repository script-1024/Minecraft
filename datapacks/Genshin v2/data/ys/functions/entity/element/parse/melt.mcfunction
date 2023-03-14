#> 融化 64

# 冰被火克制
scoreboard players operation @s element.pcryo /= #2 const
scoreboard players operation @s element.pyro -= @s element.cryo
scoreboard players set @s element.cryo 0
execute unless score @s element.state matches 1 run scoreboard players set @s element.pyro 0

execute if score @s element.state matches 66 run scoreboard players set @e[scores={timer.frozen=1..},distance=..2] timer.frozen 0
execute anchored eyes positioned ^ ^-0.3 ^ summon text_display run function ys:entity/element/show/melt

execute store result score @s entity.damage on attacker run scoreboard players get @s entity.atk

execute if score @s element.state matches 1 run scoreboard players operation @s entity.damage *= #15 const
execute if score @s element.state matches 63 run scoreboard players operation @s entity.damage *= #20 const
execute if score @s element.state matches 66 run scoreboard players operation @s entity.damage *= #20 const

scoreboard players operation @s entity.damage /= #10 const

# 增幅反应
function ys:entity/set/amplified
function ys:entity/damage

scoreboard players set @s element.state 0