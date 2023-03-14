#> 冻结 66
#  弱3s | 強5s

scoreboard players set @s timer.frozen 0
function ys:entity/element/parse/quant/frozen

scoreboard players set @s element.state 66
execute anchored eyes positioned ^ ^-0.3 ^ summon text_display run function ys:entity/element/show/frozen

tag @s add el.frz
execute summon armor_stand run data merge entity @s {Tags:[ice,el.frz,v],Marker:1b,Invisible:1b}
execute align y positioned ~-0.5 ~ ~-0.5 summon block_display run data merge entity @s {Tags:[ice,el.frz],block_state:{Name:"ice"}}
execute align y positioned ~-0.5 ~1 ~-0.5 summon block_display run data merge entity @s {Tags:[ice,el.frz],block_state:{Name:"ice"}}
ride @s mount @e[tag=v,limit=1,sort=nearest]
execute as @e[tag=ice,distance=..2] unless score @s timer.frozen matches 0.. store result score @s timer.frozen run scoreboard players get @e[limit=1,sort=nearest,tag=el.frz,tag=!ice] timer.frozen
execute as @e[tag=ice,distance=..2] unless score @s element.state matches 66 run scoreboard players set @s element.state 66
effect give @s slowness infinite 6 true

execute store result score @s entity.damage on attacker run scoreboard players get @s entity.atk
function ys:entity/damage