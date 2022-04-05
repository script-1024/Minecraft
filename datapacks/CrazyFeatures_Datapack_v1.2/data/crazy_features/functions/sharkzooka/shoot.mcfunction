execute positioned ~ ~0.5 ~ run summon armor_stand ^-0.4 ^ ^1.0 {NoGravity:1,Invisible:1,DisabledSlots:4144959,Tags:["shark_init","shark_proj"],Silent:1,Pose:{Head:[0.001f,0.001f,0.001f]},Small:1}
item replace entity @s weapon.mainhand with iron_nugget{CustomModelData:60,display:{Name:'{"text":"Sharkzooka","italic":"false","color":"gold"}'},HideFlags:127}
scoreboard players set @s m_shark_load 70
execute as @a if predicate crazy_features:rightclick run kill @e[tag=shark_proj]
playsound minecraft:sharkzooka_launch master @a ~ ~ ~ 1.0 1.0
playsound minecraft:sharkzooka_splash master @a ~ ~ ~ 3.0 1.0
