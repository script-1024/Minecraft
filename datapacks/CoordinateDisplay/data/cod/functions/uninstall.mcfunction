# 觸發器
scoreboard objectives remove here

# 玩家
scoreboard objectives remove p.x
scoreboard objectives remove p.y
scoreboard objectives remove p.z
scoreboard objectives remove p.direction
scoreboard objectives remove p.lookup
scoreboard objectives remove p.dimension
scoreboard objectives remove p.actionbar

# 私有計分項
scoreboard objectives remove cod.sneak

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76坐標顯示\u00a7e卸載完畢"