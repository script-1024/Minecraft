#define tag room
#define tag door

# 時鐘增加一刻
scoreboard players add @a rand.seed 1
scoreboard players add #gen rand.seed 1

# 生成地城
scoreboard players enable @a gen
execute as @a at @s rotated as @s if score @s gen matches 1.. run function dun:gen/trigger

# 延遲執行
execute as @a at @s rotated as @s run tag @e[distance=..64,tag=wait] add ok
execute as @e[tag=wait,tag=ok] at @s rotated as @s run function dun:delay

# 防止出現非法變量
execute if score set dun.room matches ..-1 run function dun:msg/warn/incorrect_settings

# 開門
execute as @a at @s rotated as @s if data entity @s Inventory[].tag.LodestoneTracked run function dun:open_door

# 防止房間沒有開口
execute as @e[tag=room,tag=ok] at @s rotated as @s unless entity @e[tag=door,tag=open,distance=..10] unless entity @e[tag=door,tag=lock,distance=..10] run function dun:gen/door/fix/add

# 防止房間存在不正確的開口 if score place dun.room >= set dun.room 
execute as @e[tag=room,tag=ok] at @s rotated as @s if entity @e[tag=door,tag=open,distance=..10] run function dun:gen/door/fix/remove
execute as @e[tag=room,tag=ok] at @s rotated as @s if entity @e[tag=door,tag=lock,distance=..10] run function dun:gen/door/fix/remove

execute as @a[scores={cd.ask=0}] run tag @s remove ask