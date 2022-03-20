scoreboard players reset @s info
tellraw @s "\u00a7e===================="

    # 無 None 0
    execute if score @s ys.role matches 0 run tellraw @s "\u00a7f當前角色: \u00a77無"

    # 火 Pyro 1xx
    execute if score @s ys.role matches 100 run tellraw @s "\u00a7f當前角色: \u00a7c旅行者 [火]"
    execute if score @s ys.role matches 101 run tellraw @s "\u00a7f當前角色: \u00a7c安柏 [火]"
    execute if score @s ys.role matches 102 run tellraw @s "\u00a7f當前角色: \u00a7c香菱 [火]"
    execute if score @s ys.role matches 103 run tellraw @s "\u00a7f當前角色: \u00a7c班尼特 [火]"
    execute if score @s ys.role matches 104 run tellraw @s "\u00a7f當前角色: \u00a7c迪盧克 [火]"
    execute if score @s ys.role matches 105 run tellraw @s "\u00a7f當前角色: \u00a7c可莉 [火]"
    execute if score @s ys.role matches 106 run tellraw @s "\u00a7f當前角色: \u00a7c辛焱 [火]"
    execute if score @s ys.role matches 107 run tellraw @s "\u00a7f當前角色: \u00a7c胡桃 [火]"
    execute if score @s ys.role matches 108 run tellraw @s "\u00a7f當前角色: \u00a7c烟緋 [火]"
    execute if score @s ys.role matches 109 run tellraw @s "\u00a7f當前角色: \u00a7c宵宮 [火]"
    execute if score @s ys.role matches 110 run tellraw @s "\u00a7f當前角色: \u00a7c托馬 [火]"

    # 水 Hydro 2xx
    execute if score @s ys.role matches 200 run tellraw @s "\u00a7f當前角色: \u00a79旅行者 [水]"
    execute if score @s ys.role matches 201 run tellraw @s "\u00a7f當前角色: \u00a79芭芭拉 [水]"
    execute if score @s ys.role matches 202 run tellraw @s "\u00a7f當前角色: \u00a79行秋 [水]"
    execute if score @s ys.role matches 203 run tellraw @s "\u00a7f當前角色: \u00a79莫娜 [水]"
    execute if score @s ys.role matches 204 run tellraw @s "\u00a7f當前角色: \u00a79達達利亞 [水]"
    execute if score @s ys.role matches 205 run tellraw @s "\u00a7f當前角色: \u00a79珊瑚宮心海 [水]"
    execute if score @s ys.role matches 206 run tellraw @s "\u00a7f當前角色: \u00a79神里綾人 [水]"

    # 風 Anemo 3xx
    execute if score @s ys.role matches 300 run tellraw @s "\u00a7f當前角色: \u00a73旅行者 [風]"
    execute if score @s ys.role matches 301 run tellraw @s "\u00a7f當前角色: \u00a73砂糖 [風]"
    execute if score @s ys.role matches 302 run tellraw @s "\u00a7f當前角色: \u00a73琴 [風]"
    execute if score @s ys.role matches 303 run tellraw @s "\u00a7f當前角色: \u00a73溫迪 [風]"
    execute if score @s ys.role matches 304 run tellraw @s "\u00a7f當前角色: \u00a73魈 [風]"
    execute if score @s ys.role matches 305 run tellraw @s "\u00a7f當前角色: \u00a73楓原萬葉 [風]"
    execute if score @s ys.role matches 306 run tellraw @s "\u00a7f當前角色: \u00a73早柚 [風]"

    # 雷 Electro 4xx

    # 草 Dendro 5xx

    # 冰 Cryo 6xx

    # 岩 Geo 7xx

    # ...

    tellraw @s [{"text":"\u00a7f內部代碼: "},{"score":{"name":"@s","objective":"ys.role"},"color":"yellow"}]

tellraw @s "\u00a7e===================="