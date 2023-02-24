#alias entity vehicle @e[limit=1,sort=nearest,tag=vc]

tag @s add init

execute summon armor_stand run data merge entity @s {Tags:[vc],Small:1b,Invulnerable:1b,NoBasePlate:1b}
summon marker ~ ~ ~ {Tags:[data],data:{current:{},store:[ {p:1, character:{id:0,name:"旅行者",element:"無",lv:1,health:912,atk:18,atk_base:18,def:57,def_base:57,talent:[1,1,1]},weapon:{id:100,name:"無鋒劍",lv:1,refining:1} } ]}}
ride @e[limit=1,sort=nearest,tag=data] mount @e[limit=1,sort=nearest,tag=vc]
ride @s mount @e[limit=1,sort=nearest,tag=vc]

execute on vehicle on passengers run data modify entity @s data.current set from entity @s data.store[{p:1}]