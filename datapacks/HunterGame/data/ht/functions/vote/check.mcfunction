execute if score @s player.votes >= #1p ht.tag run scoreboard players operation #2p ht.tag = #1p ht.tag
execute if score @s player.votes >= #1p ht.tag run scoreboard players operation #1p ht.tag = @s player.votes
tellraw @a [{"translate":"1p:%s, 2p:%s","with":[{"score":{"name":"#1p","objective":"ht.tag"}},{"score":{"name":"#2p","objective":"ht.tag"}}]}]
tag @s add check