scoreboard players operation @e[limit=1,sort=nearest,tag=e] entity.health.diff *= #-1 const
data modify entity @s text set value '{"color":"green","score":{"name":"@e[limit=1,sort=nearest,tag=e]","objective":"entity.health.diff"}}'