data merge entity @s {Tags:[dd,d,t],billboard:"center",background:0,see_through:true,transformation:{scale:[0f,0f,0f]}}
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. run data modify entity @s text set value '{"color":"#FFFFFF","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches ..-1 run function dd:entity/text_display/number/heal

execute unless score @s dd.timer matches 0.. run scoreboard players set @s dd.timer 0

function dd:entity/transformation/translate

tag @e[limit=1,sort=nearest,tag=e] remove e