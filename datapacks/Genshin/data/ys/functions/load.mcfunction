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
scoreboard objectives add set trigger

#scoreboard objectives add ys.useMap minecraft.used:minecraft.map

scoreboard objectives add ys.skillCd dummy
scoreboard objectives add ys.burstCd dummy
scoreboard objectives add ys.efc dummy
scoreboard objectives add ys.health dummy
scoreboard objectives add ys.slot dummy
scoreboard objectives add ys.set dummy
scoreboard objectives add ys.damage dummy

function ys:timer
function ys:timer_slow

# 初始化資料包設置
    scoreboard players set #1 ys.set 1
    execute unless score #marker ys.set matches 0..1 run scoreboard players set #marker ys.set 1
    execute unless score #invisible ys.set matches 0..1 run scoreboard players set #invisible ys.set 1
    execute unless score #small ys.set matches 0..1 run scoreboard players set #small ys.set 1
# ...

tellraw @a "\u00a7b提示> \u00a76原神資料包\u00a7e讀取完畢"