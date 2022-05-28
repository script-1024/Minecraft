# ===============================================
# 升到下一級所需經驗值的計算公式如下：
# 
# 升級所需 =
# 2×[目前等級] + 7（0-15級時）
# 5×[目前等級] - 38（16-30級時）
# 9×[目前等級] - 158（在31級以上）
# 升到某一級所需經驗值總量的計算公式如下：
# 
# 經驗總量 =
# [等級]^2 + 6×[等級]（0-16級時）
# 2.5×[等級]^2 - 40.5×[等級] + 360（17-31級時）
# 4.5×[等級]^2 - 162.5×[等級] + 2220（在32級以上）
# ===============================================

#scoreboard players set @s p.expSync 0

execute if score @s p.exp matches 1.. run function std:exp/up/set
execute if score @s p.exp matches ..-1 run function std:exp/down/set

execute if score @s p.xp matches 0 if score @s p.level matches 0 if score @s p.exp matches ..-1 run scoreboard players set @s p.exp 0