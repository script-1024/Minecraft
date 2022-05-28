# Trigger
scoreboard objectives remove here

# Player
scoreboard objectives remove p.x
scoreboard objectives remove p.y
scoreboard objectives remove p.z

scoreboard objectives remove p.xp
scoreboard objectives remove p.xp.tmp
scoreboard objectives remove p.xpNow
scoreboard objectives remove p.level
scoreboard objectives remove p.level.tmp
scoreboard objectives remove p.levelNow
scoreboard objectives remove p.exp
scoreboard objectives remove p.exp.tmp
scoreboard objectives remove p.expSync

scoreboard objectives remove p.sneak
scoreboard objectives remove p.health
scoreboard objectives remove p.actionbar

# Standard Library
scoreboard objectives remove std.timer
scoreboard objectives remove std.const

# Random Number Generator
scoreboard objectives remove rng.out
scoreboard objectives remove rng.temp

tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76函式庫\u00a7e卸載完畢"