data modify storage cjt:nbt Item set value {id:"chicken_spawn_egg",Count:1,tag:{CustomModelData:100,display:{Name:' "\\u00a7e拆解台" '},EntityTag:{id:"armor_stand",Tags:[cjt],Small:1,NoGravity:1,NoBasePlate:1,Marker:1,Invulnerable:1,Invisible:1,Rotation:[0,0],ArmorItems:[{},{},{},{}],ArmorDropChances:[0,0,0,1]}}}



# ========================================================

# 第二格「書」的數量
scoreboard objectives add cjt.book dummy

# 可用的空格是第幾個
scoreboard objectives add cjt.empty dummy

# 空格的 ID
scoreboard objectives add cjt.slot dummy

# 第一格輸入的物品數
scoreboard objectives add cjt.in dummy

# 輸出的物品數量
scoreboard objectives add cjt.out dummy

# 工作階段，不為 0 時表示目前佔用中
scoreboard objectives add cjt.stage dummy

# 供計算用的暫存
scoreboard objectives add cjt.tmp dummy

# 單件素材的總數量
scoreboard objectives add cjt.mat dummy

# 符合「切換素材」條件的物品數
scoreboard objectives add cjt.sw dummy

# =========================================================



tellraw @a[gamemode=creative] "\u00a7b提示> \u00a76拆解台\u00a7e更新完畢"