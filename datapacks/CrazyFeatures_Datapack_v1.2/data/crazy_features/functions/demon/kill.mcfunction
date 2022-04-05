execute as @e[tag=md_boss_ai] if score @s aj.id = @e[tag=aj.demon.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id run tag @s add kill
execute as @e[tag=md_boss_hitbox] if score @s aj.id = @e[tag=aj.demon.root_entity,distance=..0.1,limit=1,sort=nearest] aj.id run tag @s add kill
execute as @e[tag=kill] at @s run tp @s ~ -10 ~
kill @e[tag=kill]
function demon:remove/this_model
