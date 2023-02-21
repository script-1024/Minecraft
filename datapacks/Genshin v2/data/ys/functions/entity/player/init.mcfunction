#alias entity vehicle @e[limit=1,sort=nearest,tag=vc]
execute summon minecart run data merge entity @s {Tags:[ys,vc],NoGravity:true}
summon marker ~ ~ ~ {Tags:[ys,data],data:{}}
ride @s mount @e[limit=1,sort=nearest,tag=vc]