# 每刻執行
# 1t | 0.05s

execute as @a[tag=!player] run function zb:player/init
execute as @a[tag=player] at @s rotated as @s run function zb:player/main

execute as @e[tag=zb] if score @s entity.health matches 0.. run function zb:hp/get
execute as @e[tag=!player,tag=zb] run function zb:hp/display/entity

# 死亡
execute as @e[tag=!player,tag=zb] if score @s entity.health matches ..0 run kill @s
execute as @a[tag=!death] at @s rotated as @s if score @s entity.health matches 0 run function zb:player/death
execute as @e[tag=top] run data modify entity @s CustomName set from entity @s ArmorItems[3].tag.display.Name
execute as @e[tag=name] at @s run data modify entity @s CustomName set from entity @e[tag=top,limit=1,sort=nearest] CustomName
execute as @e[tag=name] at @s unless entity @p[tag=death,dx=-1,dy=-2,dz=-1] run tp @p[tag=death] ~ ~ ~
#execute as @a[tag=death] at @s at @e[tag=name,limit=1,sort=nearest] run tp @s ~ ~ ~
execute as @a[tag=death] if score @s entity.health matches 1.. run tag @s remove death
execute as @e[tag=dummy] at @s unless entity @a[tag=death,distance=..3] run kill @s

kill @e[type=item,nbt={Item:{tag:{zb:1}}}]