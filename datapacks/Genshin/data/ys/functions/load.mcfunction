scoreboard objectives add ys.role dummy "角色"
execute as @a unless score @s ys.role matches 0..799 run scoreboard players set @s ys.role 0

# 無 None 0
# 火 Pyro 1xx
# 水 Hydro 2xx
# 風 Anemo 3xx
# 雷 Electro 4xx
# 草 Dendro 5xx
# 冰 Cryo 6xx
# 岩 Geo 7xx

scoreboard objectives add info trigger

#scoreboard objectives add ys.useMap minecraft.used:minecraft.map

function ys:timer

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76原神資料包\u00a7e讀取完畢"
tellraw @a[gamemode=creative] "\u00a7b提示> \u00a7e當前處於 \u00a7c原初測試 \u00a7e階段"