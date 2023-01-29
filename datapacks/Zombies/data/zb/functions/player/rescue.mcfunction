# 救援死亡玩家
# call | player/main

execute if score @s player.rescue matches 100.. run scoreboard players set @s player.sneak 0

scoreboard players operation @s player.rescue = @s player.sneak
scoreboard players operation @s player.rescue /= #8 const
execute if entity @s[tag=!death] run scoreboard players operation @s player.rescue *= #10 const
execute if entity @s[tag=qr] run scoreboard players operation @s player.rescue *= #2 const