summon boat ~ ~ ~
summon item ~ ~0.6 ~ {PickupDelay:10,Item:{id:"chest",Count:1,tag:{cb:1}},Tags:[cbi,drop]}
data modify entity @e[tag=cbi,limit=1,sort=nearest] Item.tag.BlockEntityTag.Items set from entity @e[type=chest_boat,limit=1,sort=nearest] Items
data modify entity @e[limit=1,sort=nearest,type=boat] {} merge from entity @e[limit=1,sort=nearest,type=chest_boat] {}
tp @e[type=chest_boat,limit=1,sort=nearest] ~ -500 ~

execute unless score @s cb.cd matches 1.. run scoreboard players set @s cb.cd 2

tp @s ~ ~0.6 ~