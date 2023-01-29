# 玩家死亡
# call | tick -> 如果 自身 生命值<=0 且 沒有 death標籤 時

tag @s add death
scoreboard players set @s entity.health 0
scoreboard players set @s player.rescue 0
scoreboard players set @s player.sneak 0

clear @s

execute align xz run tp @s ~ ~ ~ ~ 0

summon armor_stand ~ ~ ~ {Tags:[dummy,top],Invisible:0b,Marker:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ShowArms:1b,ArmorItems:[{},{},{id:"leather_chestplate",Count:1b},{id:"player_head",Count:1b}],Pose:{Body:[275f,0f,0f],Head:[300f,0f,0f],LeftArm:[250f,0f,0f],RightArm:[270f,0f,0f]},DisabledSlots:16191}
summon armor_stand ~ ~ ~ {Tags:[dummy,bottom],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{},{}],Pose:{Body:[180f,0f,0f],LeftLeg:[270f,0f,0f],RightLeg:[270f,0f,0f]},DisabledSlots:16191}
summon armor_stand ~ ~ ~ {Tags:[dummy,name],Small:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b,CustomNameVisible:1b,DisabledSlots:16191}

execute rotated as @s as @e[tag=top,limit=1,sort=nearest] run tp @s ^ ^-1.3 ^-0.3 ~ 300
execute rotated as @s as @e[tag=bottom,limit=1,sort=nearest] run tp @s ^ ^-0.6 ^0.3 ~ 0

item replace entity @e[tag=top,limit=1,sort=nearest] armor.head with player_head
item modify entity @e[tag=top,limit=1,sort=nearest] armor.head zb:get_player_head
item modify entity @e[tag=top,limit=1,sort=nearest] armor.head zb:get_name