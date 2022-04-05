#################################################################################################################
#                                                       INIT
#################################################################################################################


function wasd:init


scoreboard objectives add m_r dummy
scoreboard objectives add m_launchTimer dummy
scoreboard objectives add m_p_rot dummy
scoreboard objectives add m_tnt_stage dummy
scoreboard objectives add m_talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add m_comp_1 dummy
scoreboard objectives add m_comp_2 dummy
scoreboard objectives add m_comp_3 dummy
scoreboard objectives add m_eff_1_lvl dummy
scoreboard objectives add m_eff_2_lvl dummy
scoreboard objectives add m_eff_3_lvl dummy
scoreboard objectives add m_eff_4_lvl dummy
scoreboard objectives add m_eff_5_lvl dummy
scoreboard objectives add m_eff_6_lvl dummy
scoreboard objectives add m_eff_7_lvl dummy
scoreboard objectives add m_eff_8_lvl dummy
scoreboard objectives add m_eff_9_lvl dummy
scoreboard objectives add m_slime_dis dummy
scoreboard objectives add m_piston_length dummy
scoreboard objectives add m_pistonID dummy
scoreboard objectives add m_piston_order dummy
scoreboard objectives add m_piston_state dummy
scoreboard objectives add m_piston_timer dummy
scoreboard objectives add m_p_block_save dummy
scoreboard objectives add m_block_state dummy
scoreboard objectives add m_score_comparer dummy
scoreboard objectives add m_fungus minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add m_exp_p dummy
scoreboard objectives add m_exp dummy
scoreboard objectives add m_chase_timer dummy
scoreboard objectives add m_t_score dummy
scoreboard objectives add m_t_score2 dummy
scoreboard objectives add m_in_light dummy
scoreboard objectives add m_tl_timer dummy
scoreboard objectives add m_tl_state dummy
scoreboard objectives add m_tlp_color dummy
scoreboard objectives add m_walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add m_sneak minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add m_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add m_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add m_shark_rot dummy
scoreboard objectives add m_shark_jump dummy
scoreboard objectives add m_shark_lt dummy
scoreboard objectives add launch_x dummy
scoreboard objectives add launch_dx dummy
scoreboard objectives add launch_y dummy
scoreboard objectives add launch_dy dummy
scoreboard objectives add launch_z dummy
scoreboard objectives add launch_dz dummy
scoreboard objectives add m_shark_load dummy
scoreboard objectives add c dummy
scoreboard objectives add m_hitbox dummy
scoreboard objectives add m_r_anim_stop dummy
scoreboard objectives add attackTimer1 dummy
scoreboard objectives add attackTimer2 dummy
scoreboard objectives add attack1_cd dummy
scoreboard objectives add attack2_cd dummy
scoreboard objectives add m_drill_state dummy
scoreboard objectives add m_claw_state dummy
scoreboard objectives add m_grab_block dummy
scoreboard objectives add m_r_drill_sound dummy
scoreboard objectives add m_r_engine_sound dummy
scoreboard objectives add m_bb_spin_timer dummy
scoreboard objectives add m_bb_ID dummy
scoreboard objectives add m_bb_tilt dummy
scoreboard objectives add m_bb_hit_timer dummy
scoreboard objectives add m_bb_fall_timer dummy
scoreboard objectives add m_bb_motion_x dummy
scoreboard objectives add m_bb_motion_z dummy
scoreboard objectives add m_bb_motion_y dummy
scoreboard objectives add m_bb_hit_sound dummy
scoreboard objectives add m_constant dummy
scoreboard objectives add m_bb_hit_cd dummy
scoreboard objectives add m_bb_hit_power dummy
scoreboard objectives add m_variant_punch dummy
scoreboard objectives add m_deathTimer dummy
scoreboard objectives add m_damageTimer dummy
scoreboard objectives add m_mobHealth dummy
scoreboard objectives add m_attackTimer1 dummy
scoreboard objectives add m_attackTimer2 dummy
scoreboard objectives add m_attackTimer3 dummy
scoreboard objectives add m_attackTimer4 dummy
scoreboard objectives add m_attack1_cd dummy
scoreboard objectives add m_attack2_cd dummy
scoreboard objectives add m_attack3_cd dummy
scoreboard objectives add m_attack4_cd dummy
scoreboard objectives add m_moveTimer dummy
scoreboard objectives add m_isMoving dummy
scoreboard objectives add m_damageImmune dummy
scoreboard objectives add m_scream_proj_lt dummy
scoreboard objectives add m_swore_sound dummy
scoreboard objectives add m_death deathCount
scoreboard objectives add m_shark_jmp_prep dummy

scoreboard players set -1 m_constant -1
scoreboard players set 2 m_constant 2
scoreboard players set 3 m_constant 3
scoreboard players set 8 m_constant 8
scoreboard players set 10 m_constant 10
scoreboard players set 14 m_constant 14
scoreboard players set 16 m_constant 16
scoreboard objectives add maxPistonLength dummy
scoreboard players add settings maxPistonLength 0
execute if score settings maxPistonLength matches 0 run scoreboard players set settings maxPistonLength 10

gamerule logAdminCommands false
gamerule commandBlockOutput false

team add nocoll
team modify nocoll collisionRule never
team modify nocoll seeFriendlyInvisibles false

team add hitbox
team modify hitbox collisionRule never
team modify hitbox seeFriendlyInvisibles false

bossbar add demon_hp [{"text":"D","color":"#ffc300","bold":"true"},{"text":"e","color":"#ffc300","bold":"true"},{"text":"m","color":"#ffdb00","bold":"true"},{"text":"o","color":"#ffe232","bold":"true"},{"text":"n","color":"#ffe85d","bold":"true"},{"text":"e","color":"#ffee85","bold":"true"},{"text":"t","color":"#ffe85d","bold":"true"},{"text":"i","color":"#ffe232","bold":"true"},{"text":"z","color":"#ffdb00","bold":"true"},{"text":"e","color":"#ffc300","bold":"true"},{"text":"r","color":"#ffc300","bold":"true"}]
scoreboard players set @a[nbt={UUID:[I;1819568993,2136491415,-1919274244,1368104327]}] m_hitbox 1
bossbar set minecraft:demon_hp style notched_6
bossbar set minecraft:demon_hp color yellow
bossbar set minecraft:demon_hp max 1000
bossbar set minecraft:demon_hp visible false
