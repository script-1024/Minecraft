#execute as @e[type=item,distance=..3] if data entity @s Item.tag.kill run kill @s
execute unless entity @p[gamemode=creative,distance=..6] run summon item ~ ~1 ~ {Item:{id:"stone",Count:1},Tags:[cjt_item]}
execute unless entity @p[gamemode=creative,distance=..6] as @e[tag=cjt_item,limit=1,sort=nearest] run data modify entity @s Item merge from storage cjt:nbt Item
kill @e[distance=..5,nbt={Item:{tag:{cl:1}}}]
scoreboard players reset @s
kill @s