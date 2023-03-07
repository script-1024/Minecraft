#> 冻结
#  弱3s | 強5s

tag @s add el.frz
execute summon armor_stand run data merge entity @s {Tags:[ice,el.frz,v],Marker:1b,Invisible:1b}
execute positioned ~-0.5 ~ ~-0.5 summon block_display run data merge entity @s {Tags:[ice,el.frz],block_state:{Name:"ice"}}
execute positioned ~-0.5 ~1 ~-0.5 summon block_display run data merge entity @s {Tags:[ice,el.frz],block_state:{Name:"ice"}}
ride @s mount @e[tag=v,limit=1,sort=nearest]
scoreboard players set @s timer.frozen 60
execute as @e[tag=ice,distance=..2] unless score @s timer.frozen matches 0.. run scoreboard players set @s timer.frozen 60
effect give @s slowness 6 6 true