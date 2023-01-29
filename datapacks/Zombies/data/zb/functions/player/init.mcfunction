# 初始化玩家資料
# call | tick -> 如果 自己 沒有 player標籤 時

tag @s add player
tag @s add zb

title @s times 0 10 0

scoreboard players set @s entity.health 100
scoreboard players set @s entity.health.max 100
scoreboard players set @s entity.health.percent 100

scoreboard players set @s player.actionbar 0

scoreboard players set @s player.coin 0
scoreboard players set @s player.aim 0

scoreboard players set @s player.wp.fired 0

scoreboard players set @s player.wp_1.id 0
scoreboard players set @s player.wp_2.id 0

scoreboard players set @s player.wp_1.cd 0
scoreboard players set @s player.wp_2.cd 0

scoreboard players set @s player.wp_1.am.mag 0
scoreboard players set @s player.wp_2.am.mag 0

scoreboard players set @s player.wp_1.am.total 0
scoreboard players set @s player.wp_2.am.total 0

scoreboard players set @s player.buff_1 0
scoreboard players set @s player.buff_2 0
scoreboard players set @s player.buff_3 0