scoreboard players set #game ht.tag -1

bossbar set timer visible false

execute if score #t ht.tag matches ..0 run title @a[team=hunter] subtitle "§c未能擊殺目標"
execute if score #t ht.tag matches ..0 run title @a[team=runner] subtitle "§a成功躲避追捕"
title @a title "遊戲結束"