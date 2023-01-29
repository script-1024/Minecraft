execute unless entity @e[tag=door,distance=..2] run summon armor_stand ~ ~ ~ {Tags:[dun,door,new],Small:1b,Marker:1b,NoGravity:1b,Invisible:1b,Invulnerable:1b}

# 校正方向
execute as @e[tag=door,tag=new,limit=1,sort=nearest] at @s rotated as @s facing entity @e[tag=room,limit=1,sort=nearest] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

execute as @e[tag=door,tag=new,limit=1,sort=nearest] at @s rotated as @s run function dun:gen/door/select