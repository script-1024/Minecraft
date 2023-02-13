scoreboard players set #game ht.tag 2

scoreboard players operation #pc ht.tag = #total ht.tag
scoreboard players remove #pc ht.tag 5
execute if score #ps ht.tag matches 0 if score #pc ht.tag matches ..-1 run scoreboard players set #p ht.tag 1
execute if score #ps ht.tag matches 0 if score #pc ht.tag matches 0..1 run scoreboard players set #p ht.tag 2
execute if score #ps ht.tag matches 0 if score #pc ht.tag matches 2.. run scoreboard players set #p ht.tag 3
execute if score #ps ht.tag matches 1.. run scoreboard players operation #p ht.tag = #ps ht.tag

execute as @a if score #p ht.tag matches 1.. if score @s player.votes = #1p ht.tag run tag @s add 1p
execute as @a if score #p ht.tag matches 2.. if score @s player.votes = #2p ht.tag run tag @s add 2p
execute as @a if score #p ht.tag matches 3.. if score @s player.votes = #3p ht.tag run tag @s add 3p

tag @a remove check
team join runner @r[tag=1p,team=!runner]
tag @a remove 1p
team join runner @r[tag=2p,team=!runner]
tag @a remove 2p
team join runner @r[tag=3p,team=!runner]
tag @a remove 3p
team join hunter @a[team=!runner,gamemode=!spectator]

tag @a[team=hunter] add ht
tag @a[team=runner] add ht

scoreboard players set @a player.votes 0

tellraw @a [{"translate":"\n已選出 %s 作為遊俠","color":"yellow","with":[{"selector":"@a[team=runner]","separator":" 和 "}]}]