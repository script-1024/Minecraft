execute at @s positioned ^ ^ ^-0.14 if block ~ ~ ~ #crazy_features:passable run tp @s ^ ^ ^-0.14
execute at @s positioned ^ ^ ^-0.14 unless block ~ ~ ~ #crazy_features:passable if block ~ ~1 ~ #crazy_features:passable run tp @s ^ ^1 ^-0.14
execute at @s positioned ~ ~-0.2 ~ if block ~ ~ ~ #crazy_features:passable run tp @s ~ ~-0.199 ~
execute at @s positioned ~ ~-0.1 ~ if block ~ ~ ~ #crazy_features:passable run tp @s ~ ~-0.099 ~
execute if entity @s[scores={m_drill_state=0}] unless entity @s[tag=aj.rover.animations.animation.rover.drive_backwards] run function crazy_features:rover/anim_drive_backwards
execute if entity @s[scores={m_drill_state=1}] unless entity @s[tag=aj.rover.animations.animation.rover.drive_backwards_drill] run function crazy_features:rover/anim_drive_backwards
scoreboard players set @s m_r_anim_stop 5
