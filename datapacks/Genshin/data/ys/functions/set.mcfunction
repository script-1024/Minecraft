scoreboard players reset @s set
tellraw @s "\u00a76===================="

tellraw @s "\u00a7f除錯>"
tellraw @s ["\u00a7b  碰撞箱: ",{"text":"[開啟]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #marker ys.set 0"}},"\u00a7r  ",{"text":"[關閉]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #marker ys.set 1"}}]
tellraw @s ["\u00a7b  隱形: ",{"text":"[開啟]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set #invisible ys.set 1"}},"\u00a7r  ",{"text":"[關閉]","color":"red","clickEvent":{"action":"run_command","value":"/scoreboard players set #invisible ys.set 0"}}]
tellraw @s ["\u00a7b  尺寸: ",{"text":"[小]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set #small ys.set 1"}},"\u00a7r  ",{"text":"[大]","color":"yellow","clickEvent":{"action":"run_command","value":"/scoreboard players set #small ys.set 0"}}]

tellraw @s "\u00a76===================="