scoreboard players add #voted ht.tag 1
execute if score @s vote matches 0 run scoreboard players add @a[scores={player.uid=0}] player.votes 1
execute if score @s vote matches 1 run scoreboard players add @a[scores={player.uid=1}] player.votes 1
execute if score @s vote matches 2 run scoreboard players add @a[scores={player.uid=2}] player.votes 1
execute if score @s vote matches 3 run scoreboard players add @a[scores={player.uid=3}] player.votes 1
execute if score @s vote matches 4 run scoreboard players add @a[scores={player.uid=4}] player.votes 1
execute if score @s vote matches 5 run scoreboard players add @a[scores={player.uid=5}] player.votes 1
execute if score @s vote matches 6 run scoreboard players add @a[scores={player.uid=6}] player.votes 1
execute if score @s vote matches 7 run scoreboard players add @a[scores={player.uid=7}] player.votes 1
execute if score @s vote matches 8 run scoreboard players add @a[scores={player.uid=8}] player.votes 1
execute if score @s vote matches 9 run scoreboard players add @a[scores={player.uid=9}] player.votes 1
scoreboard players set @s vote -1