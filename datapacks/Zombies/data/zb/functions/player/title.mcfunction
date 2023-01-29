# 標題
# 5t | 0.25s

schedule function zb:player/title 5t

execute as @a at @s if entity @s[tag=!death] if entity @a[tag=death,distance=..3] if score @s player.sneak matches 1.. run title @s title "§e正在救援隊友..."
execute as @a at @s if entity @s[tag=death] if entity @a[scores={player.sneak=1..},distance=..3] run title @s title "§e隊友正在嘗試救援..."
execute as @a at @s if entity @s[tag=death,tag=sh] if score @s player.sneak matches 1.. run title @s title "§e正在嘗試自救..."