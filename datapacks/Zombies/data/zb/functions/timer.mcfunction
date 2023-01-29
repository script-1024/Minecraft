# 時鐘
# 2t | 0.1s

schedule function zb:timer 2t

execute as @a[scores={player.use.cd=1..}] run scoreboard players remove @s player.use.cd 1
execute as @a[scores={player.wp.fired=1..}] run scoreboard players remove @s player.wp.fired 1