#> 超载 16

execute if score @s element.state matches 1 run scoreboard players set @s element.electro 0
execute if score @s element.state matches 15 run scoreboard players set @s element.pyro 0
scoreboard players remove @s element.electro 800
scoreboard players remove @s element.pyro 800

scoreboard players set @s element.state 16
execute anchored eyes positioned ^ ^-0.3 ^ summon text_display run function ys:entity/element/show/overloaded

execute on attacker at @s run summon marker ~ ~ ~ {Tags:[origin,el.ovl]}

tag @s add el.ovl
execute facing entity @e[limit=1,sort=nearest,tag=origin] feet run summon armor_stand ^ ^ ^-2 {Tags:[boom,el.ovl],Small:1b,Invisible:1b,Invulnerable:1b}
execute as @e[limit=1,sort=nearest,tag=boom] at @s facing entity @e[limit=1,sort=nearest,tag=origin] feet run tp @s ~ ~ ~ ~ ~

# 剧变反应
function ys:entity/set/cataclysmic
function ys:entity/damage