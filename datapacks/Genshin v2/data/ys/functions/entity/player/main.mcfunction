execute if entity @s[tag=!init] run function ys:entity/player/init
execute if entity @s[tag=init] unless data entity @s RootVehicle run function ys:entity/player/ride
tp @e[limit=1,sort=nearest,tag=data] ~ ~ ~