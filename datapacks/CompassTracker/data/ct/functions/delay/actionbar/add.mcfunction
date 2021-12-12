scoreboard players add track_delay ct.settings 1
execute store result storage ct:settings actionbar float 0.1 run scoreboard players get track_delay ct.settings
title @s title [{"nbt":"actionbar","storage":"ct:settings","color":"yellow"},{"text":"\u00a7b秒"}]