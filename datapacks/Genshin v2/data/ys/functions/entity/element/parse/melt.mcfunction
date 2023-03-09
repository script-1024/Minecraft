#> 融化
#  弱3s | 強5s

execute if score @s element.state matches 66 run scoreboard players set @s timer.frozen 0

execute store result score @s entity.damage on attacker run scoreboard players get @s entity.atk

execute if score @s element.state matches 1 run scoreboard players operation @s entity.damage *= #15 const
execute if score @s element.state matches 63 run scoreboard players operation @s entity.damage *= #20 const
execute if score @s element.state matches 66 run scoreboard players operation @s entity.damage *= #20 const

scoreboard players operation @s entity.damage /= #10 const

scoreboard players set @s element.state 0