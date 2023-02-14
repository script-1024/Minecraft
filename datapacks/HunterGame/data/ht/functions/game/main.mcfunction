execute store result bossbar timer value run scoreboard players get #t ht.tag
execute if score #t ht.tag matches 1.. run bossbar set timer visible true
execute if score #t ht.tag matches 0 run bossbar set timer visible false

execute if score #game ht.tag matches 1 run bossbar set timer name [{"translate":"遊戲即將開始 %s.%s","with":[{"score":{"name":"#sec","objective":"ht.tag"}},{"score":{"name":"#poi","objective":"ht.tag"}}]}]
#檢查自己的得票數
execute if score #game ht.tag matches 1 as @a[limit=1,tag=!check] run function ht:vote/check
execute if score #game ht.tag matches 1 if score #t ht.tag matches ..70 unless entity @a[tag=!check] run function ht:game/assign


execute if score #game ht.tag matches 2 run bossbar set timer name [{"translate":"正在分配隊伍 %s.%s","with":[{"score":{"name":"#sec","objective":"ht.tag"}},{"score":{"name":"#poi","objective":"ht.tag"}}]}]
execute if score #game ht.tag matches 2 if score #t ht.tag matches ..40 run function ht:game/prepare


execute if score #game ht.tag matches 3 run bossbar set timer name [{"translate":"遊俠準備時間 %s.%s","with":[{"score":{"name":"#sec","objective":"ht.tag"}},{"score":{"name":"#poi","objective":"ht.tag"}}]}]
execute if score #game ht.tag matches 3 as @a[team=hunter] at @s rotated as @s run tp @s ~ ~ ~ ~ 0
execute if score #game ht.tag matches 3 if score #t ht.tag matches ..0 run function ht:game/start

execute if score #game ht.tag matches 4 if score #t ht.tag matches 36000.. run bossbar set timer name [{"translate":"遊戲剩餘時間 %s:%s:%s.%s","with":[{"score":{"name":"#hr","objective":"ht.tag"}},{"score":{"name":"#min","objective":"ht.tag"}},{"score":{"name":"#sec","objective":"ht.tag"}},{"score":{"name":"#poi","objective":"ht.tag"}}]}]
execute if score #game ht.tag matches 4 if score #t ht.tag matches 600..36000 run bossbar set timer name [{"translate":"遊戲剩餘時間 %s:%s.%s","with":[{"score":{"name":"#min","objective":"ht.tag"}},{"score":{"name":"#sec","objective":"ht.tag"}},{"score":{"name":"#poi","objective":"ht.tag"}}]}]
execute if score #game ht.tag matches 4 if score #t ht.tag matches 600..36000 run bossbar set timer color blue
execute if score #game ht.tag matches 4 if score #t ht.tag matches ..600 run bossbar set timer name [{"color":"red","translate":"[§6!§r] 遊戲剩餘時間 %s:%s.%s [§6!§r]","with":[{"score":{"name":"#min","objective":"ht.tag"}},{"score":{"name":"#sec","objective":"ht.tag"}},{"score":{"name":"#poi","objective":"ht.tag"}}]}]
execute if score #game ht.tag matches 4 if score #t ht.tag matches ..600 run bossbar set timer color red
execute if score #game ht.tag matches 4 if score #t ht.tag matches ..0 run function ht:game/end