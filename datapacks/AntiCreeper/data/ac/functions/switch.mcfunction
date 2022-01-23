execute if score @s ac matches 1.. run scoreboard players set #active ac.state 1

execute if score @s ac matches ..-1 run scoreboard players set #active ac.state 0

execute if score #active ac.state matches 1 run tellraw @s[tag=!op] "\u00a7b提示> \u00a76苦力怕防爆\u00a7a已經開啟"

execute if score #active ac.state matches 0 run tellraw @s[tag=!op] "\u00a7b提示> \u00a76苦力怕防爆\u00a7c已經關閉"

execute if score #active ac.state matches 1 run tellraw @a[tag=op] "\u00a7b提示> \u00a76苦力怕防爆\u00a7a已經開啟"

execute if score #active ac.state matches 0 run tellraw @a[tag=op] "\u00a7b提示> \u00a76苦力怕防爆\u00a7c已經關閉"

scoreboard players set @s ac 0