summon armor_stand ~ ~ ~ {Tags:[char],NoBasePlate:1b,Invulnerable:1b,Invisible:1b,Silent:1b,ShowArms:1b,DisabledSlots:4096}
scoreboard players operation @e[limit=1,sort=nearest,tag=char] ys.uid = @s ys.uid

summon minecart ~ ~ ~ {Tags:[m],Invulnerable:1b,CustomName:'',CustomNameVisible:1b,Silent:1b}
scoreboard players operation @e[limit=1,sort=nearest,tag=m] ys.uid = @s ys.uid