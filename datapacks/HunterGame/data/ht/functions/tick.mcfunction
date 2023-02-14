execute store result score #total ht.tag if entity @a
execute unless score #bc ht.tag = #voted ht.tag unless score #voted ht.tag matches 0 run function ht:vote/broadcast
execute unless score #bc ht.tag = #voted ht.tag if score #voted ht.tag matches 0 run scoreboard players set #bc ht.tag 0

execute as @a unless score @s player.uid matches 0.. run function ht:give_uid

function ht:trigger
execute if score #game ht.tag matches 1.. run function ht:game/main

effect give @a[team=!runner,team=!hunter] resistance 1 4 true

execute as @a[team=hunter] at @s run function ht:hunter/main
execute as @a[team=runner] at @s run function ht:runner/main

execute as @a store result score @s self.x run data get entity @s Pos[0] 1
execute as @a store result score @s self.y run data get entity @s Pos[1] 1
execute as @a store result score @s self.z run data get entity @s Pos[2] 1

clear @a[team=!hunter] compass{tracker:1b}
kill @e[type=item,nbt={Item:{tag:{tracker:1b}}}]