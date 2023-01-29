# 玩家主程式
# 1t | 0.05s

# 創造模式玩家
execute unless data entity @s SelectedItem.tag.btn_check unless data entity @s Inventory[{Slot:-106b}].tag.btn_check run clear @s carrot_on_a_stick{btn_check:1}
execute as @a[gamemode=creative] at @s rotated as @s run function zb:player/creative/main

# 快捷欄
execute store result score @s player.select run data get entity @s SelectedItemSlot
execute if entity @s[gamemode=adventure,tag=!death] run function zb:player/hotbar
execute if score @s player.select matches 1 unless score @s player.am.query = @s player.wp_1.am.total run function zb:player/ammo_sync
execute if score @s player.select matches 2 unless score @s player.am.query = @s player.wp_2.am.total run function zb:player/ammo_sync

# 狀態效果
effect give @s saturation 1000000 0 true
effect give @s resistance 1000000 4 true
effect give @s[tag=death] invisibility 1 0 true
effect give @s[tag=!death,scores={player.rescue=1..}] glowing 1 0 true

# 血條
execute if score @s player.actionbar matches 0 run function zb:hp/display/player/regular

# 潛行重置
execute unless score @s player.sneak matches 0 positioned ~ ~2 ~ if entity @s[dy=-0.3] run scoreboard players set @s player.sneak 0

# 救人
execute unless entity @a[tag=death,distance=..3] run scoreboard players set @s player.rescue 0
execute if entity @s[tag=death,tag=sh] run function zb:player/rescue
execute if entity @s[tag=!death] if entity @a[tag=death,distance=..3] run function zb:player/rescue
execute if entity @s[tag=death,tag=sh] if score @s player.rescue matches 1.. run title @s subtitle [{"score": {"name": "@s","objective": "player.rescue"},"color": "aqua"},"§b%"]
execute if entity @s[tag=death,tag=sh] if score @s player.rescue matches 100.. run scoreboard players operation @s entity.health = @s entity.health.max
execute if entity @s[tag=!death] if entity @a[tag=death,distance=..3] if score @s player.rescue matches 1.. as @a[tag=death,distance=..3] run title @s subtitle [{"score": {"name": "@s","objective": "player.rescue"},"color": "aqua"},"§b%"]
execute if entity @s[tag=!death] if entity @a[tag=death,distance=..3] if score @s player.rescue matches 100.. as @a[tag=death,distance=..3] run scoreboard players operation @s entity.health = @s entity.health.max

# 攻擊
execute if data entity @s Inventory[{Slot:-106b}].tag.wp run scoreboard players add @s player.atk 1
execute if entity @s[gamemode=creative] if data entity @s Inventory[{Slot:-106b}] run scoreboard players add @s player.atk 1
execute if entity @s[gamemode=!creative] unless data entity @s Inventory[{Slot:-106b}].tag.zb run item replace entity @s weapon.offhand with air
execute if score @s player.wp.fired matches 1.. run scoreboard players set @s player.atk 0
execute if score @s player.atk matches 1.. run function zb:player/attack

# 瞄準
function zb:player/aim/check

# 裝填
execute if score @s player.reload matches 1 unless score @s player.select matches 1..2 run scoreboard players set @s player.reload 0
execute if score @s player.reload matches 1 if score @s player.select matches 1 if score @s player.wp_1.id matches 1.. run function zb:weapon/reload_1
execute if score @s player.reload matches 1 if score @s player.select matches 2 if score @s player.wp_2.id matches 1.. run function zb:weapon/reload_2