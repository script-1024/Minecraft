#define entity text_display

data merge entity @s {Tags:[dd,t],billboard:"center",background:0,see_through:true,transformation:{scale:[0f,0f,0f]},interpolation_start:0,interpolation_duration:10}
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 1.. run data modify entity @s text set value '{"color":"#FFFFFF","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches 0 run function dd:entity/immune
execute if score @e[limit=1,sort=nearest,tag=e] entity.health.diff matches ..-1 run function dd:entity/heal

execute as @e[tag=dd] unless score @s dd.timer matches 0.. run scoreboard players set @s dd.timer 1

# data merge entity @s {transformation:{translation:[0f,0f,0f]}}
execute if score #tmp dd.timer matches 0 run data merge entity @s {transformation:{translation:[0.2f,-0.4f,0f]}}
execute if score #tmp dd.timer matches 1 run data merge entity @s {transformation:{translation:[0.1f,0.3f,-0.3f]}}
execute if score #tmp dd.timer matches 2 run data merge entity @s {transformation:{translation:[-0.5f,-0.2f,0.4f]}}
execute if score #tmp dd.timer matches 3 run data merge entity @s {transformation:{translation:[-0.1f,-0.6f,0.2f]}}
execute if score #tmp dd.timer matches 4 run data merge entity @s {transformation:{translation:[-0.8f,0.5f,0f]}}
execute if score #tmp dd.timer matches 5 run data merge entity @s {transformation:{translation:[0.3f,0.1f,0.1f]}}
execute if score #tmp dd.timer matches 6 run data merge entity @s {transformation:{translation:[-0.6f,-0.6f,0.2f]}}
execute if score #tmp dd.timer matches 7 run data merge entity @s {transformation:{translation:[0f,-0.2f,0f]}}
execute if score #tmp dd.timer matches 8 run data merge entity @s {transformation:{translation:[0f,0f,0f]}}
execute if score #tmp dd.timer matches 9 run data merge entity @s {transformation:{translation:[0f,0f,0f]}}

tag @e[limit=1,sort=nearest,tag=e] remove e