tag @s add init

scoreboard players set @s player.p 1
summon marker ~ ~ ~ {Tags:[ys,data],data:{current:{},store:[{p:1,character:{},weapon:{}},{p:2,character:{},weapon:{}},{p:3,character:{},weapon:{}},{p:4,character:{},weapon:{}}]}}
data modify entity @e[tag=data,limit=1,sort=nearest] data.store[{p:1}] merge value {p:1, character:{id:0,name:"旅行者",full_name:"旅行者·空(无)",element:"无",lv:1,health:912,max_health:912,atk:18,atk_base:18,def:57,def_base:57,cd:0.0f,cr:50.0f,em:0,eb:0.0f,talent:[{lv:1,value:[100.0f]},{lv:1,value:[100.0f]},{lv:1,value:[100.0f]}]},weapon:{id:100,name:"无锋剑",lv:1,refining:1}}
data modify entity @e[tag=data,limit=1,sort=nearest] data.store[{p:2}] merge value {p:1, character:{id:306,name:"楓原萬葉",full_name:"紅葉逐荒波 楓原萬葉(風)",element:"風",lv:90,health:24900,max_health:24900,atk:2100,atk_base:297,def:900,def_base:807,cd:180.0f,cr:90.0f,em:115,eb:61.6f,talent:[{lv:10,value:[88.9f,89.4f,51.0f,61.2f,120.0f,50.1f,85.0f,147.5f]},{lv:13},{lv:13}]}}

execute as @e[tag=data,limit=1,sort=nearest] at @s run function ys:entity/player/reload