#=================================================
#
# Firearms_v1.1
# 
# 作者: script1024
#
# 這些指令只會執行一次
#
#=================================================



# 建立計分板

    scoreboard objectives add settings dummy "設置"
    scoreboard objectives add bullet dummy "產生子彈"
    scoreboard objectives add test_score_exist dummy "測試玩家的分數是否已經存在"
    scoreboard objectives add fired dummy "已經發射"
    scoreboard objectives add target_health dummy "目標血量"
    scoreboard objectives add break dummy "跳出迴圈"
    scoreboard objectives add ammo dummy "彈藥數目"
    scoreboard objectives add pistol_ammo dummy "手槍彈藥"
    scoreboard objectives add rifle_ammo dummy "步槍彈藥"
    scoreboard objectives add shotgun_ammo dummy "霰彈槍彈藥"
    scoreboard objectives add rocket_ammo dummy "火箭發射器彈藥"
    scoreboard objectives add sniper_ammo dummy "狙擊槍彈藥"

# ...



# 初始化

    scoreboard players reset @a bullet
    scoreboard players reset @a test_score_exist
    scoreboard players reset @a fired
    scoreboard players reset @a break
    scoreboard players reset @a pistol_ammo
    scoreboard players reset @a rifle_ammo
    scoreboard players reset @a shotgun_ammo
    scoreboard players reset @a rocket_ammo
    scoreboard players reset @a sniper_ammo

# ...



# 設置

    scoreboard players set glowing settings 1
    
# ...



# 給予彈藥

    execute as @a if entity @s[tag=own_pistol] run scoreboard players set @s pistol_ammo 300
    execute as @a if entity @s[tag=own_rifle] run scoreboard players set @s rifle_ammo 288
    execute as @a if entity @s[tag=own_shotgun] run scoreboard players set @s shotgun_ammo 65
    execute as @a if entity @s[tag=own_rocket] run scoreboard players set @s rocket_ammo 20
    execute as @a if entity @s[tag=own_sniper] run scoreboard players set @s sniper_ammo 40

# ...



# 清除所有標籤

    execute as @a at @s run function firearms:reset

# ...



# 清除所有盔甲架

    kill @e[tag=shooting]
    
# ...



tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76槍械資料包\u00a7e加載完畢"