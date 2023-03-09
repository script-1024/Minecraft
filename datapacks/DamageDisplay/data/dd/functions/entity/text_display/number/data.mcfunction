data merge entity @s {Tags:[dd,d,num,txt],billboard:"center",background:0,see_through:true,transformation:{scale:[0f,0f,0f]}}
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches ..-1 run function dd:entity/text_display/number/heal

#> 無 0 | 火 1 | 水 2 | 風 3 | 雷 4 | 草 5 | 冰 6 | 岩 7 | 超載 8
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 0 run data modify entity @s text set value '{"color":"#FFFFFF","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 1 run data modify entity @s text set value '{"color":"#F25040","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 2 run data modify entity @s text set value '{"color":"#00A0FF","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 3 run data modify entity @s text set value '{"color":"#30FFC0","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 4 run data modify entity @s text set value '{"color":"#CC80FF","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 5 run data modify entity @s text set value '{"color":"#30BE30","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 6 run data modify entity @s text set value '{"color":"#A6FECE","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 7 run data modify entity @s text set value '{"color":"#E2AE30","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. if score @s dd.element matches 8 run data modify entity @s text set value '{"color":"#FFFFFF","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'

execute unless score @s dd.timer matches 0.. run scoreboard players set @s dd.timer 0

function dd:entity/transformation/translate

tag @e[limit=1,sort=nearest,tag=e] remove e