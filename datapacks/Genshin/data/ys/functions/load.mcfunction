scoreboard objectives add gm trigger
scoreboard objectives add char trigger "修改角色ID"
scoreboard objectives add ys.char dummy "內部角色ID"
execute as @a unless score @s ys.char matches 0..799 run scoreboard players set @s ys.char 0

# 無 None    0
# 火 Pyro    1   #F25040
# 水 Hydro   2   #01A0FF
# 風 Anemo   3   #30FFC0
# 雷 Electro 4   #CC80FF
# 草 Dendro  5   #30BE30
# 冰 Cryo    6   #A6FEFE
# 岩 Geo     7   #E2AE30

scoreboard objectives add ys.idBook trigger "獲取角色ID列表"

#scoreboard objectives add ys.x dummy "x"
#scoreboard objectives add ys.y dummy "y"
#scoreboard objectives add ys.z dummy "z"

scoreboard objectives add ys.dx dummy "x位移"
scoreboard objectives add ys.dy dummy "y位移"
scoreboard objectives add ys.dz dummy "z位移"
scoreboard objectives add ys.direction dummy "朝向"
scoreboard objectives add ys.rotation dummy "實體旋轉"

scoreboard objectives add ys.kb.w dummy "w"
scoreboard objectives add ys.kb.a dummy "a"
scoreboard objectives add ys.kb.s dummy "s"
scoreboard objectives add ys.kb.d dummy "d"
scoreboard objectives add ys.kb.wasd dummy

scoreboard objectives add ys.set dummy "設置"
scoreboard objectives add ys.slot dummy "選中的快捷欄"
scoreboard objectives add ys.hotbar dummy "玩家快捷欄的狀態"
scoreboard objectives add ys.used minecraft.used:minecraft.carrot_on_a_stick "使用"
scoreboard objectives add ys.jump minecraft.custom:minecraft.drop "跳躍"

scoreboard objectives add ys.health dummy "生命值"
scoreboard objectives add ys.cd.attack dummy "攻擊冷卻"
scoreboard objectives add ys.cd.skill dummy "戰技冷卻"
scoreboard objectives add ys.cd.burst dummy "爆發冷卻"
scoreboard objectives add ys.cd.jump dummy "跳躍冷卻"
scoreboard objectives add ys.cd.sprint dummy "衝刺冷卻"
scoreboard objectives add ys.state.walking dummy "行走狀態"

scoreboard objectives add ys.icon.skill dummy
scoreboard objectives add ys.icon.burst dummy

scoreboard objectives add ys.uid dummy "UID"

scoreboard objectives add ys.p dummy
scoreboard objectives add ys.p1 dummy "P1角色ID"
scoreboard objectives add ys.p2 dummy "P2角色ID"
scoreboard objectives add ys.p3 dummy "P3角色ID"
scoreboard objectives add ys.p4 dummy "P4角色ID"

scoreboard objectives add ys.ani dummy "動畫"
scoreboard objectives add ys.ani.type dummy
# 動畫 ys.ani
# 格式: ***&FFF  例如 3062001
# ID   : *  例如 306
# Type : &  例如 2    [ stand:0 | walk:1 | run:2 | jump:3 | sprint:4 | climb:5 | attack:6 | skill:7 | burst:8 ]
# Frame: F  例如 001

function ys:timer
function ys:animation/start
function ys:hotbar/refresh



# 初始化資料包設置
    scoreboard players set #exist ys.set 1
    scoreboard players set #-1 ys.set -1
    data modify storage ys:nbt item.dummy set value {id:"minecraft:paper",Count:1b,tag:{display:{Lore:['{"text":"楓原萬葉","color":"#30FFC0","italic":"false"}','{"text":"§7適合作為擺設"}']},CustomModelData:3060001}}
    execute unless data storage ys:lang set run function ys:lang/zh_hant
    execute if data storage ys:lang {set:"繁體中文"} run function ys:lang/zh_hant
    execute if data storage ys:lang {set:"简体中文"} run function ys:lang/zh_hans
# ...



forceload add 0 0 -1 -1



tellraw @a ["\n",{"nbt":"msg.tip.prefix","storage":"ys:lang"},{"nbt":"msg.tip.pack.name","storage":"ys:lang"},{"nbt":"msg.tip.pack.load","storage":"ys:lang"}]