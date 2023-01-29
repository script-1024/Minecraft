#alias entity char @e[limit=1,sort=nearest,tag=char]

execute unless score @s ys.p matches 1..4 run scoreboard players set @s ys.p 1
execute unless score @s ys.uid matches 1.. store result score @s ys.uid run list
execute if score @s ys.char matches 0 run function ys:msg/remove_character
execute unless score @s ys.state.walking matches 0..1 run scoreboard players set @s ys.state.walking 1



# 角色
execute if score @s ys.char matches 300 run function ys:char/aether/3/main
execute if score @s ys.char matches 306 run function ys:char/kazuha/main
# ---



# 快捷欄
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.0 with carrot_on_a_stick{ys:1,mu:1,CustomModelData:2,display:{Name:'"§e選單"'}}
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.1 with carrot_on_a_stick{ys:1,atk:1,CustomModelData:1,display:{Name:'"§f普通攻擊"'}}
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.2 with carrot_on_a_stick{ys:1,atk:1,CustomModelData:1,display:{Name:'"§f普通攻擊"'}}
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.3 with carrot_on_a_stick{ys:1,atk:1,CustomModelData:1,display:{Name:'"§f普通攻擊"'}}
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.4 with carrot_on_a_stick{ys:1,atk:1,CustomModelData:1,display:{Name:'"§f普通攻擊"'}}
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.5 with carrot_on_a_stick{ys:1,atk:1,CustomModelData:1,display:{Name:'"§f普通攻擊"'}}
execute if score @s ys.hotbar matches 0 run item replace entity @s hotbar.6 with carrot_on_a_stick{ys:1,atk:1,CustomModelData:1,display:{Name:'"§f普通攻擊"'}}

execute if score @s ys.hotbar matches 1 run item replace entity @s hotbar.0 with carrot_on_a_stick{ys:1,bk:1,CustomModelData:3,display:{Name:'"§c返回"'}}
execute if score @s ys.hotbar matches 1 run item replace entity @s hotbar.1 with carrot_on_a_stick{ys:1,ch:1,CustomModelData:4,display:{Name:'"§b切換 疾跑/步行"'}}

execute if data entity @s Inventory[{Slot:-106b}].tag.mu run function ys:switch_characters/prepare
execute if data entity @s Inventory[{Slot:-106b}].tag.bk run function ys:switch_characters/back
execute if score @s ys.hotbar matches 0 if score @s ys.slot matches 0 if score @s ys.used matches 1.. run function ys:switch_characters/prepare
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 0 if score @s ys.used matches 1.. run function ys:switch_characters/back

execute if data entity @s Inventory[{Slot:-106b}].tag.ch run function ys:msg/change_walking_state
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 1 if score @s ys.used matches 1.. run function ys:msg/change_walking_state

execute if data entity @s Inventory[{Slot:-106b}].tag.p1 run function ys:switch_characters/p1
execute if data entity @s Inventory[{Slot:-106b}].tag.p2 run function ys:switch_characters/p2
execute if data entity @s Inventory[{Slot:-106b}].tag.p3 run function ys:switch_characters/p3
execute if data entity @s Inventory[{Slot:-106b}].tag.p4 run function ys:switch_characters/p4
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 2 if score @s ys.used matches 1.. run function ys:switch_characters/p1
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 3 if score @s ys.used matches 1.. run function ys:switch_characters/p2
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 4 if score @s ys.used matches 1.. run function ys:switch_characters/p3
execute if score @s ys.hotbar matches 1 if score @s ys.slot matches 5 if score @s ys.used matches 1.. run function ys:switch_characters/p4
# ---



execute unless entity @e[limit=1,sort=nearest,tag=char,distance=..8] run function ys:summon



# 控制動畫
execute as @e[limit=1,sort=nearest,tag=char] unless data entity @s ArmorItems[{id:"minecraft:paper"}] run item replace entity @s armor.head with paper{cl:1}
execute store result entity @e[limit=1,sort=nearest,tag=char] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s ys.ani
execute unless score @s ys.ani.type matches 0.. run scoreboard players set @s ys.ani.type 0
# ---



# 玩家狀態效果
execute if data entity @s RootVehicle run effect give @s invisibility 1 0 true
effect give @s resistance 1 4 true
# ---



# 控制角色 移動&轉向
execute if score @s ys.kb.wasd matches 0 if score @s ys.ani.type matches 1..2 run scoreboard players set @s ys.ani.type 0
execute if score @s ys.kb.wasd matches 0 if score @s ys.cd.jump matches 1.. run scoreboard players set @s ys.ani.type 3
execute if score @s ys.kb.wasd matches 0 unless score @s ys.cd.jump matches 1.. if score @s ys.ani.type matches 3 if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} run scoreboard players set @s ys.ani.type 0
execute if score @s ys.kb.wasd matches 1.. if score @s ys.state.walking matches 0 run scoreboard players set @s ys.ani.type 1
execute if score @s ys.kb.wasd matches 1.. if score @s ys.state.walking matches 1 run scoreboard players set @s ys.ani.type 2

execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} if score @s ys.state.walking matches 1 as @e[tag=char] store result entity @s Motion[0] double 0.0055 run scoreboard players get @p ys.dx
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} if score @s ys.state.walking matches 1 as @e[tag=char] store result entity @s Motion[2] double 0.0055 run scoreboard players get @p ys.dz
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} if score @s ys.state.walking matches 0 as @e[tag=char] store result entity @s Motion[0] double 0.006 run scoreboard players get @p ys.dx
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} if score @s ys.state.walking matches 0 as @e[tag=char] store result entity @s Motion[2] double 0.006 run scoreboard players get @p ys.dz
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} if score @s ys.state.walking matches 1 as @e[tag=char] store result entity @s Motion[0] double 0.0115 run scoreboard players get @p ys.dx
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:0b} if score @s ys.state.walking matches 1 as @e[tag=char] store result entity @s Motion[2] double 0.0115 run scoreboard players get @p ys.dz
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} if score @s ys.state.walking matches 1 as @e[tag=char] store result entity @s Motion[0] double 0.012 run scoreboard players get @p ys.dx
execute unless score @s ys.cd.sprint matches 1.. if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} if score @s ys.state.walking matches 1 as @e[tag=char] store result entity @s Motion[2] double 0.012 run scoreboard players get @p ys.dz
execute if score @s ys.cd.sprint matches 1.. as @e[tag=char] store result entity @s Motion[0] double 0.024 run scoreboard players get @p ys.dx
execute if score @s ys.cd.sprint matches 1.. as @e[tag=char] store result entity @s Motion[2] double 0.024 run scoreboard players get @p ys.dz

execute as @e[tag=char] store result entity @s Motion[1] double 0.001 run scoreboard players get @p ys.dy

execute store result score @s ys.rotation run data get entity @s Rotation[0] 1

execute if score @s ys.kb.a matches 1 if score @s ys.kb.wasd matches 1 run scoreboard players remove @s ys.rotation 90
execute if score @s ys.kb.d matches 1 if score @s ys.kb.wasd matches 1 run scoreboard players add @s ys.rotation 90
execute if score @s ys.kb.a matches 1 if score @s ys.kb.wasd matches 2 run scoreboard players remove @s ys.rotation 45
execute if score @s ys.kb.d matches 1 if score @s ys.kb.wasd matches 2 run scoreboard players add @s ys.rotation 45
execute if score @s ys.kb.s matches 1 if score @s ys.kb.wasd matches 1 run scoreboard players add @s ys.rotation 180
execute if score @s ys.kb.s matches 1 if score @s ys.kb.a matches 1 run scoreboard players remove @s ys.rotation 90
execute if score @s ys.kb.s matches 1 if score @s ys.kb.d matches 1 run scoreboard players add @s ys.rotation 90

execute if score @s ys.rotation matches ..-181 run scoreboard players add @s ys.rotation 360
execute if score @s ys.rotation matches 181.. run scoreboard players remove @s ys.rotation 360
execute if score @s ys.kb.wasd matches 1.. store result entity @e[limit=1,sort=nearest,tag=char] Rotation[0] float 1 run scoreboard players get @s ys.rotation

execute if score @s ys.hotbar matches 0 if score @s ys.slot matches 1..6 if score @s ys.used matches 1.. run function ys:sprint
# ---



# 對盔甲架右鍵
execute if data entity @e[limit=1,sort=nearest,tag=char] HandItems[0].id run scoreboard players add @s ys.used 1
execute if score @s ys.used matches 1.. run item replace entity @e[limit=1,sort=nearest,tag=char] weapon with air
# ---



# 爬牆
execute rotated ~ 0 if block ^ ^ ^1 air run tag @s remove climb
execute if data entity @e[limit=1,sort=nearest,tag=char] {OnGround:1b} run tag @s remove climb
execute if entity @s[tag=climb] if score @s ys.kb.w matches 1 rotated ~ 0 unless block ^ ^ ^1 air run function ys:climb
# ---