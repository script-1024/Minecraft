data merge entity @s {Tags:[dd,d,efc,txt],billboard:"center",background:0,see_through:true,transformation:{scale:[0f,0f,0f]}}
data modify entity @s text set value '{"color":"#AAAAAA","text":"免疫"}'

execute unless score @s dd.timer matches 0.. run scoreboard players set @s dd.timer 0

function dd:entity/transformation/translate

tag @e[limit=1,sort=nearest,tag=e] remove e