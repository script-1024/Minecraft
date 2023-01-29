# 創造模式玩家主程式
# 1t | 0.05s

execute if score @s player.atk matches 1.. anchored eyes positioned ^ ^ ^ run function zb:player/creative/destroy

execute unless data entity @s SelectedItem run item replace entity @s weapon.mainhand with carrot_on_a_stick{display:{Name:'"§b按鍵檢測"',Lore:['"§7創造模式玩家才會持有的物品"','"§7貼圖只有1x1，毫不起眼"']},btn_check:1,CustomModelData:1}

execute if score @s player.use matches 1.. if data entity @s SelectedItem.tag.btn_check run scoreboard players set @s player.use 0

execute if score @s player.use.cd matches 1.. run function zb:player/hotbar