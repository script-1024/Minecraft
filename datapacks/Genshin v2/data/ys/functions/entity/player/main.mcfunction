execute if entity @s[tag=!init] run function ys:entity/player/init
tp @e[limit=1,sort=nearest,tag=data] ~ ~ ~

execute store result score @s entity.dx run data get entity @s Motion[0] 1000
execute store result score @s entity.dz run data get entity @s Motion[2] 1000

# 重力
execute if entity @s[tag=!test] if data entity @s RootVehicle.Entity{OnGround:0b} unless score @s entity.dy matches ..-2800 run scoreboard players operation @s entity.dy += #gravity ys.tag
execute if entity @s[tag=!test] if data entity @s RootVehicle.Entity{OnGround:1b} if score @s entity.dy matches ..-101 run scoreboard players set @s entity.dy -100

execute on vehicle store result entity @s Motion[0] double 0.012 run scoreboard players get @p entity.dx
execute on vehicle store result entity @s Motion[1] double 0.001 run scoreboard players get @p entity.dy
execute on vehicle store result entity @s Motion[2] double 0.012 run scoreboard players get @p entity.dz

execute store result score @s player.atk on vehicle on passengers run data get entity @s data.current.character.atk
execute store result score @s player.def on vehicle on passengers run data get entity @s data.current.character.def