# 檢查瞄準狀態
# 1t | 0.05s

execute if score @s player.use matches 1.. if data entity @s SelectedItem.tag.aim run function zb:player/aim/set

# 點按: 切換瞄準
execute if score @s player.use.times matches 1.. unless score @s player.use.cd matches 3.. run function zb:player/aim/switch

# 長按: 按住瞄準
execute unless score @s player.use.times matches 0..1 run function zb:player/aim/press

# 放開
execute unless score @s player.use.cd matches 1.. run scoreboard players set @s player.use.times 0