execute positioned ~ ~1 ~ run summon minecraft:armor_stand ^-0.7 ^ ^0.5 {Small:1,NoGravity:1,Tags:["m_beyblade","m_beyblade_visual","new","new_visual"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:1}}],Pose:{Head:[0.001f,0.001f,0.001f]}}
execute positioned ~ ~1 ~ run summon minecraft:armor_stand ^-0.7 ^ ^0.5 {Small:1,NoGravity:0,Tags:["m_beyblade","m_beyblade_center","new"],Silent:1,Marker:0b,Invisible:1b,DisabledSlots:4144959}

scoreboard players add #last_bb.id m_bb_ID 1
scoreboard players operation @e[type=armor_stand,tag=m_beyblade,tag=new] m_bb_ID = #last_bb.id m_bb_ID
scoreboard players set @e[type=armor_stand,tag=new,tag=m_beyblade_visual] m_bb_tilt 0

execute as @e[type=armor_stand,tag=m_beyblade_center,tag=new] run execute store result entity @s Rotation[0] float 1 run data get entity @a[scores={m_fungus=1..},limit=1,sort=nearest] Rotation[0] 1
execute as @e[type=armor_stand,tag=m_beyblade_center,tag=new] at @s run function crazy_features:beyblade/launch


execute as @a if predicate crazy_features:rightclick run kill @e[type=armor_stand,tag=m_beyblade_center]
scoreboard players add @e[type=armor_stand,tag=m_beyblade_center,tag=new] m_bb_hit_cd 0
scoreboard players add @e[type=armor_stand,tag=m_beyblade_center,tag=new] m_bb_spin_timer 0
tag @e[tag=new] remove new
playsound minecraft:beyblade_throw master @a ~ ~ ~ 0.4 1.0
