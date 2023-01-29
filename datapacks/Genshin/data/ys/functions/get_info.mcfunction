scoreboard players reset @s info
tellraw @s "§e===================="

    # 無 None 0
    execute if score @s ys.char matches 0 run tellraw @s "§f當前角色: §7無"

    # 火 Pyro 1xx
    execute if score @s ys.char matches 100 run tellraw @s "§f當前角色: §c旅行者 [火]"
    execute if score @s ys.char matches 101 run tellraw @s "§f當前角色: §c安柏 [火]"
    execute if score @s ys.char matches 102 run tellraw @s "§f當前角色: §c香菱 [火]"
    execute if score @s ys.char matches 103 run tellraw @s "§f當前角色: §c班尼特 [火]"
    execute if score @s ys.char matches 104 run tellraw @s "§f當前角色: §c迪盧克 [火]"
    execute if score @s ys.char matches 105 run tellraw @s "§f當前角色: §c可莉 [火]"
    execute if score @s ys.char matches 106 run tellraw @s "§f當前角色: §c辛焱 [火]"
    execute if score @s ys.char matches 107 run tellraw @s "§f當前角色: §c胡桃 [火]"
    execute if score @s ys.char matches 108 run tellraw @s "§f當前角色: §c烟緋 [火]"
    execute if score @s ys.char matches 109 run tellraw @s "§f當前角色: §c宵宮 [火]"
    execute if score @s ys.char matches 110 run tellraw @s "§f當前角色: §c托馬 [火]"

    # 水 Hydro 2xx
    execute if score @s ys.char matches 200 run tellraw @s "§f當前角色: §9旅行者 [水]"
    execute if score @s ys.char matches 201 run tellraw @s "§f當前角色: §9芭芭拉 [水]"
    execute if score @s ys.char matches 202 run tellraw @s "§f當前角色: §9行秋 [水]"
    execute if score @s ys.char matches 203 run tellraw @s "§f當前角色: §9莫娜 [水]"
    execute if score @s ys.char matches 204 run tellraw @s "§f當前角色: §9達達利亞 [水]"
    execute if score @s ys.char matches 205 run tellraw @s "§f當前角色: §9珊瑚宮心海 [水]"
    execute if score @s ys.char matches 206 run tellraw @s "§f當前角色: §9神里綾人 [水]"

    # 風 Anemo 3xx
    execute if score @s ys.char matches 300 run tellraw @s "§f當前角色: §3旅行者 [風]"
    execute if score @s ys.char matches 301 run tellraw @s "§f當前角色: §3砂糖 [風]"
    execute if score @s ys.char matches 302 run tellraw @s "§f當前角色: §3琴 [風]"
    execute if score @s ys.char matches 303 run tellraw @s "§f當前角色: §3溫迪 [風]"
    execute if score @s ys.char matches 304 run tellraw @s "§f當前角色: §3魈 [風]"
    execute if score @s ys.char matches 305 run tellraw @s "§f當前角色: §3楓原萬葉 [風]"
    execute if score @s ys.char matches 306 run tellraw @s "§f當前角色: §3早柚 [風]"

    # 雷 Electro 4xx

    # 草 Dendro 5xx

    # 冰 Cryo 6xx

    # 岩 Geo 7xx

    # ...

    tellraw @s [{"text":"§f內部代碼: "},{"score":{"name":"@s","objective":"ys.char"},"color":"yellow"}]

tellraw @s "§e===================="