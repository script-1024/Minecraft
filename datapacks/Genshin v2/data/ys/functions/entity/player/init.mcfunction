#alias entity vehicle @e[limit=1,sort=nearest,tag=vc]
execute summon minecart run data merge entity @s {Tags:[ys,vc],NoGravity:true}
summon marker ~ ~ ~ {Tags:[ys,data],data:{Team:[{p:1,id:0,name:"旅行者",element:"無",lv:1,health:912,atk:1,def:1}]}}
ride @s mount @e[limit=1,sort=nearest,tag=vc]