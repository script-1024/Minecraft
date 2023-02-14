execute if score @s player.score >= #1p ht.tag run scoreboard players operation #3p ht.tag = #2p ht.tag
execute if score @s player.score >= #1p ht.tag run scoreboard players operation #2p ht.tag = #1p ht.tag
execute if score @s player.score >= #1p ht.tag run scoreboard players operation #1p ht.tag = @s player.score
#tellraw @a [{"translate":"1p:%s, 2p:%s, 3p:%s","with":[{"score":{"name":"#1p","objective":"ht.tag"}},{"score":{"name":"#2p","objective":"ht.tag"}},{"score":{"name":"#3p","objective":"ht.tag"}}]}]
tag @s add check