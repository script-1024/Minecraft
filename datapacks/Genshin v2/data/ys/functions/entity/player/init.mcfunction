tag @s add init

scoreboard players set @s player.p 1
summon marker ~ ~ ~ {Tags:[data],data:{current:{},store:[{p:1,character:{},weapon:{}},{p:2,character:{},weapon:{}},{p:3,character:{},weapon:{}},{p:4,character:{},weapon:{}}]}}
data modify entity @e[tag=data,limit=1,sort=nearest] data.store[{p:1}] merge value {p:1, character:{id:0,name:"旅行者",full_name:"旅行者·空(无)",element:"無",lv:1,health:912,atk:18,atk_base:18,def:57,def_base:57,em:0,cd:1,talent:[1,1,1]},weapon:{id:100,name:"无锋剑",lv:1,refining:1}}