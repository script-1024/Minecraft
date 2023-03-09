execute unless data entity @s Passengers[{Tags:[icon]}] summon text_display run data merge entity @s {Tags:[icon,txt],transformation:{translation:[0f,0.85f,0f]},billboard:"vertical",background:0,interpolation_duration:5}
execute unless data entity @s Passengers[{Tags:[icon]}] run ride @e[tag=icon,limit=1,sort=nearest] mount @s

