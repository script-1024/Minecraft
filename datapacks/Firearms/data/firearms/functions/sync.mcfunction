# 統計玩家擁有的彈藥數目

    execute as @a[tag=!shooter] run scoreboard players reset @s ammo

    execute as @a[tag=holding_pistol] unless score @s pistol_ammo matches 0..2147483647 run scoreboard players set @s ammo -1
    execute as @a[tag=holding_pistol] if score @s pistol_ammo matches 0..2147483647 store result score @s ammo run scoreboard players get @s pistol_ammo

    execute as @a[tag=holding_rifle] unless score @s rifle_ammo matches 0..2147483647 run scoreboard players set @s ammo -1
    execute as @a[tag=holding_rifle] if score @s rifle_ammo matches 0..2147483647 store result score @s ammo run scoreboard players get @s rifle_ammo

    execute as @a[tag=holding_shotgun] unless score @s shotgun_ammo matches 0..2147483647 run scoreboard players set @s ammo -1
    execute as @a[tag=holding_shotgun] if score @s shotgun_ammo matches 0..2147483647 store result score @s ammo run scoreboard players get @s shotgun_ammo

    execute as @a[tag=holding_rocket] unless score @s rocket_ammo matches 0..2147483647 run scoreboard players set @s ammo -1
    execute as @a[tag=holding_rocket] if score @s rocket_ammo matches 0..2147483647 store result score @s ammo run scoreboard players get @s rocket_ammo

    execute as @a[tag=holding_sniper] unless score @s sniper_ammo matches 0..2147483647 run scoreboard players set @s ammo -1
    execute as @a[tag=holding_sniper] if score @s sniper_ammo matches 0..2147483647 store result score @s ammo run scoreboard players get @s sniper_ammo

# ...

# 顯示剩餘彈藥數目
    
    execute as @a[tag=shooter, scores={ammo=1..}] run title @s actionbar {"translate": "彈藥還有 %s 發", "color": "yellow", "with": [{"score": {"name": "@s", "objective": "ammo"}, "color": "aqua"}]}
    execute as @a[tag=shooter, scores={ammo=0}] run title @s actionbar {"text": "缺少彈藥", "color": "red", "bold": true}
    execute as @a[tag=shooter, scores={ammo=..-1}] run title @s actionbar {"text": "\u00a7l取得彈藥數目時發生了問題 \u00a7r:(", "color": "red"}

# ...