scoreboard players set @s ys.used 0
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} run effect give @s speed 1 0 true
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} run scoreboard players set @s ys.cd.sprint 8