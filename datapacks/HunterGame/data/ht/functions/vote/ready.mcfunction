scoreboard players set @a vote -1

scoreboard players set #1p ht.tag 0
scoreboard players set #2p ht.tag 0
scoreboard players set #3p ht.tag 0
scoreboard players set #game ht.tag 0
scoreboard players set #voted ht.tag 0

scoreboard players enable @a vote
scoreboard players set @a player.score 0

team empty hunter
team empty runner

execute if entity @a[scores={player.uid=0}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=0}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 0"}}]
execute if entity @a[scores={player.uid=1}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=1}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 1"}}]
execute if entity @a[scores={player.uid=2}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=2}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 2"}}]
execute if entity @a[scores={player.uid=3}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=3}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 3"}}]
execute if entity @a[scores={player.uid=4}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=4}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 4"}}]
execute if entity @a[scores={player.uid=5}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=5}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 5"}}]
execute if entity @a[scores={player.uid=6}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=6}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 6"}}]
execute if entity @a[scores={player.uid=7}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=7}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 7"}}]
execute if entity @a[scores={player.uid=8}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=8}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 8"}}]
execute if entity @a[scores={player.uid=9}] run tellraw @a [{"translate":"§6[點我] %s","color":"yellow","with":[{"selector":"@a[limit=1,scores={player.uid=9}]"}],"clickEvent":{"action":"run_command","value":"/trigger vote set 9"}}]

tellraw @a ""