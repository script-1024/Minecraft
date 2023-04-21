execute if entity @s[tag=!init] run function ys:entity/player/init
tp @e[tag=data,limit=1,sort=nearest] @s

scoreboard players operation @s player.multiplier = @s player.mp.atk
scoreboard players operation @s entity.atk = @s player.atk

execute positioned ~ ~2 ~ if entity @s[dy=-0.3] run scoreboard players set @s player.sneak 0
#execute as @e[tag=data,limit=1,sort=nearest] at @s if score @p player.select matches 0..3 unless score @p player.p = @p player.select run function ys:entity/player/switch_character

effect give @s saturation infinite 0 true
effect give @s resistance infinite 4 true

execute if score @s player.damage matches 1.. run function ys:entity/player/get_hurt

#> 武器类型
#  弓 Bow
#  法器 Catalyst
#  单手剑 Sword
#  双手剑 Claymore
#  长柄武器 Polearm
