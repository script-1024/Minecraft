scoreboard players add refresh ct.settings 1
execute store result storage ct:settings item float 0.1 run scoreboard players get refresh ct.settings
title @s title [{"nbt":"item","storage":"ct:settings","color":"yellow"},{"text":"\u00a7b秒"}]