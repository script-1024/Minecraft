particle dust 0.95 0.31 0.25 1 ~ ~ ~ 0.05 0.05 0.05 1 3 force

execute if entity @e[limit=1,sort=nearest,type=#ys:living,dx=0,dy=0,dz=0] run function ys:entity/player/catalyst/attack/pyro
execute unless score @s player.cd.atk matches 1.. if entity @s[distance=..20] unless entity @e[limit=1,sort=nearest,type=#ys:living,distance=0] positioned ^ ^ ^0.5 run function ys:entity/player/catalyst/tracking/pyro
# facing entity @e[limit=1,sort=nearest,type=#ys:living,distance=..20] eyes