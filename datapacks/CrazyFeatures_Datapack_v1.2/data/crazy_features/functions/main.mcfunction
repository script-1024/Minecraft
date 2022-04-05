################################################################################################
#
#                                         Crazy Features
#
################################################################################################


################################################################# Customizable Tnt ################################################################


execute as @a[scores={m_talk=1..}] at @s positioned ^ ^ ^2 run scoreboard players set @e[type=armor_stand,tag=m_tnt,distance=..2,limit=1,sort=nearest,scores={m_tnt_stage=0}] m_tnt_stage 1
execute as @e[type=armor_stand,tag=m_tnt,scores={m_tnt_stage=1..20}] at @s run function crazy_features:tnt/load_stage
execute as @e[type=armor_stand,tag=m_tnt,scores={m_tnt_stage=22..}] at @s run function crazy_features:tnt/lit
execute as @e[type=armor_stand,tag=m_tnt,scores={m_tnt_stage=..21}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:64b},OnGround:1b},distance=..2] run function crazy_features:tnt/enchant
execute as @e[type=armor_stand,tag=m_tnt,tag=m_tnt_enchant] at @s run particle enchant ~ ~0.5 ~ 0.5 0.5 0.5 0.1 1
execute as @e[type=armor_stand,tag=m_tnt,tag=m_tnt_enchant] at @s run particle firework ~ ~0.5 ~ 0.5 0.5 0.5 0.1 1
execute as @e[type=armor_stand,tag=m_tnt,tag=m_tnt_enchant] at @s run particle lava ~ ~0.5 ~ 0.5 0.5 0.5 0.1 1


################################################################# Bendable Piston ################################################################

execute as @e[type=armor_stand,tag=m_sp_2] at @s run function crazy_features:piston/piston_spawn

execute as @e[type=armor_stand,tag=m_piston_old] at @s run function crazy_features:piston/new_spawn_locations
execute as @e[type=armor_stand,tag=m_piston_head] at @s run function crazy_features:piston/confirm_locations
execute as @e[type=armor_stand,tag=m_PISTON_head,scores={m_piston_timer=1..,m_piston_state=1}] at @s run function crazy_features:piston/retract_timer
execute as @e[type=armor_stand,tag=m_PISTON_head,scores={m_piston_timer=1..,m_piston_state=0,m_block_state=0}] at @s run function crazy_features:piston/extend_timer

execute as @e[type=armor_stand,tag=m_PISTON_head,scores={m_piston_timer=0}] at @s if block ~ ~ ~ #crazy_features:air run function crazy_features:piston/piston_kill

execute as @e[type=armor_stand,tag=m_PISTON_head] at @s run function crazy_features:piston/check_power

################################################################# Blue Shell ################################################################

execute as @e[tag=m_blue_shell] at @s run function crazy_features:blue_shell/chase



################################################################# Traffic Light ################################################################



tag @a remove m_tl_affected
execute as @e[type=armor_stand,tag=m_traffic_light] at @s run function crazy_features:traffic_light/loop
execute as @a[scores={m_in_light=1..}] at @s run function crazy_features:traffic_light/affected_player




################################################################# Sharkzooka ################################################################

execute as @a[nbt={SelectedItem:{tag:{Shark:1b}}},scores={m_crossbow=1..}] at @s run function crazy_features:sharkzooka/shoot
execute as @a[scores={m_shark_load=1..}] at @s run function crazy_features:sharkzooka/reload_timer
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_nugget",tag:{CustomModelData:60}}},scores={m_shark_load=0}] at @s run function crazy_features:sharkzooka/reload
execute as @e[scores={m_shark_jmp_prep=1..}] at @s run function crazy_features:sharkzooka/jump_prep
execute as @e[type=armor_stand,tag=shark_jump] at @s run function crazy_features:sharkzooka/jump_loop
execute as @e[type=armor_stand,tag=shark_proj] at @s run function crazy_features:sharkzooka/shark_proj


################################################################# Mars Rover ################################################################

scoreboard players set @a m_grab_block 0
execute as @e[type=armor_stand,tag=aj.rover.root_entity] at @s run function crazy_features:rover/loop
function rover:tick

################################################################# Beyblade ################################################################

execute as @e[type=armor_stand,tag=m_beyblade_center] at @s run function crazy_features:beyblade/loop
execute as @a[nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{Beyblade:1}}},scores={m_fungus=1}] at @s run function crazy_features:beyblade/beyblade_click

################################################################# Demonetizer ################################################################

effect clear @a[scores={m_damageImmune=8}] resistance
scoreboard players remove @a[scores={m_damageImmune=1..}] m_damageImmune 1
execute as @e[type=marker,tag=md_scream] at @s run function crazy_features:demon/scream/scream_proj

execute as @e[type=armor_stand,tag=aj.demon.root_entity] at @s run function crazy_features:demon/loop

function demon:tick


######################################################################################## General ########################################################################################################

effect give @e[tag=m_invis] invisibility 1 1 true
scoreboard players set @a m_fungus 0
scoreboard players set @a m_talk 0
scoreboard players set @a m_walk 0
scoreboard players set @a m_sneak 0
scoreboard players set @a m_sprint 0
scoreboard players set @a m_crossbow 0
