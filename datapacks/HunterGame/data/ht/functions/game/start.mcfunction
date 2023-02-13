scoreboard players set #game ht.tag 4
execute as @a[team=hunter] run attribute @s generic.movement_speed base set 0.12

scoreboard players operation #t ht.tag = #gt ht.tag
bossbar set timer color blue
execute store result bossbar timer max run scoreboard players get #t ht.tag

title @a times 10 50 20

title @a[team=hunter] subtitle "§e盡力擊殺目標"
title @a[team=runner] subtitle "§e躲避獵手追捕"
title @a title "遊戲開始"