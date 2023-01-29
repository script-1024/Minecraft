scoreboard players set @s ys.jump 0
execute unless score @s ys.cd.jump matches 1.. if data entity @s {OnGround:1b} run scoreboard players set @s ys.cd.jump 3
execute if score @s ys.cd.jump matches 1.. if data entity @s {OnGround:1b} unless data entity @s RootVehicle run effect give @s levitation 1 7 true
execute if entity @s[tag=ys] if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} if data entity @s RootVehicle run scoreboard players set @s ys.dy 300
execute if entity @s[tag=ys] if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} if data entity @s RootVehicle rotated ~ 0 unless block ^ ^ ^1 air run function ys:climb/up