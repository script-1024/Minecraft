#alias entity vehicle @e[limit=1,sort=nearest,tag=vc]
execute positioned as @e[limit=1,sort=nearest,tag=vc] run tp @s ~ ~ ~ ~ ~
ride @s mount @e[limit=1,sort=nearest,tag=vc]