var attack = AT_USTRONG; // Swap Taunt for attack that this is

//Attack Values-----------------------------------------------------------------------------
set_attack_value(attack, AG_CATEGORY, 0);
set_attack_value(attack, AG_SPRITE, sprite_get("ustrong")); //sprite_get("")
set_attack_value(attack, AG_AIR_SPRITE, 0);
set_attack_value(attack, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt")); //sprite_get("_hurt")
set_attack_value(attack, AG_HURTBOX_AIR_SPRITE, 0);
set_attack_value(attack, AG_NUM_WINDOWS, 5);
set_attack_value(attack, AG_HAS_LANDING_LAG, 0);
set_attack_value(attack, AG_OFF_LEDGE, 0);
set_attack_value(attack, AG_LANDING_LAG, 0);
set_attack_value(attack, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(attack, AG_USES_CUSTOM_GRAVITY, 0);

//Window Values-----------------------------------------------------------------------------
var window_num = 1;

// Window #1 / Frame(s) # 0- / Start Up
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction * .33);

window_num++;

// Window #2 / Frame(s) # 1- / Charge Frames
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction * .33);

window_num++;

// Window #3 / Frame(s) # 2-4 / Before hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 1); 
set_window_value(attack, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2")); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

window_num++;

// Window #4 / Frame(s) # 5- / Active Hitbox
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 3);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++;

// Window #5 / Frame(s) # 6-14 / Endlag
set_window_value(attack, window_num, AG_WINDOW_TYPE, 1);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
window_num++;

//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 3); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

// Hitbox #1 / Window #2 - / Top Hitbox
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 23);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -82);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 50);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 40);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 5);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_large); //304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

hitbox_num++;

// Hitbox #2 / Window #2 - / Front Hitbox
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 48);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -42);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_large); //304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

hitbox_num++;

// Hitbox #3 / Window #2 - / Inner Hitbox
window_for_hitbox = 4; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 20);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -42);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE,10);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, vfx_fire_large); //304 - basic large
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//hitbox_num++;

/*
//Template for attacks - 

//attack window properties ---------------------------------------------------------
set_window_value(attack, window_num, AG_WINDOW_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_LENGTH, 0);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(attack, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(attack, window_num, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(attack, window_num, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(attack, window_num, AG_WINDOW_INVINCIBILITY, 0);
set_window_value(attack, window_num, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(attack, window_num, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(attack, window_num, AG_WINDOW_HAS_SFX, 0); 
set_window_value(attack, window_num, AG_WINDOW_SFX, 0); // asset_get("") or sound_get("")
set_window_value(attack, window_num, AG_WINDOW_SFX_FRAME, 0); //get_window_value(attack,window_num,AG_WINDOW_LENGTH)-1);

//individual hitbox properties --------------------------------------------------------
set_hitbox_value(attack, hitbox_num, HG_PARENT_HITBOX, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 0);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 0);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 0);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 0);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, 0);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(attack, hitbox_num, HG_GROUNDEDNESS, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(attack, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(attack, hitbox_num, HG_HIT_LOCKOUT, 0);
set_hitbox_value(attack, hitbox_num, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, 0);
set_hitbox_value(attack, hitbox_num, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(attack, hitbox_num, HG_TECHABLE, 0);
set_hitbox_value(attack, hitbox_num, HG_FORCE_FLINCH, 0);
set_hitbox_value(attack, hitbox_num, HG_FINAL_BASE_KNOCKBACK , 0);
set_hitbox_value(attack, hitbox_num, HG_THROWS_ROCK, 0);

//projectile properties -----------------------------------------------------------
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_SPRITE, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_MASK, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_LIFESPAN, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(attack, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 0);


// SFX List
mfx_back
mfx_change_color
mfx_chat_received
mfx_coin
mfx_coin_portal
mfx_confirm
mfx_flashy_shing
mfx_forward
mfx_hover
mfx_hp
mfx_hp_spawn
mfx_input_back
mfx_input_end
mfx_input_key
mfx_levelup
mfx_logo_shing
mfx_map_open
mfx_map_zoom
mfx_mm_coin
mfx_mm_coin_all
mfx_mm_coin_win
mfx_move_cursor
mfx_notice
mfx_option
mfx_orby_talk
mfx_orby_talk_done
mfx_place_marker
mfx_player_found
mfx_player_ready
mfx_result_expand
mfx_return_cursor
mfx_ring_bell
mfx_ring_bell2
mfx_star
mfx_timertick
mfx_timertick2
mfx_timertick_holy
mfx_timertick_holy2
mfx_title_loop
mfx_title_start
mfx_title_zoom
mfx_title_zoom_fast
mfx_tut_fail
mfx_unstar
mfx_wave_complete
mfx_xp
playerdefeated_sfx
plop_sfx
pullbomb_sfx
punch_sfx
select_sfx
sfx_321
sfx_absa_8b
sfx_absa_boltcloud
sfx_absa_champ_loop
sfx_absa_cloud_crackle
sfx_absa_cloud_place
sfx_absa_cloud_placepop
sfx_absa_cloud_pop
sfx_absa_cloud_send
sfx_absa_concentrate
sfx_absa_current_pop
sfx_absa_dashdown
sfx_absa_dashup
sfx_absa_dattack
sfx_absa_gp
sfx_absa_harderhit
sfx_absa_jab1
sfx_absa_jab2
sfx_absa_jabloop
sfx_absa_jump
sfx_absa_kickhit
sfx_absa_new_whip1
sfx_absa_new_whip2
sfx_absa_orb_hit
sfx_absa_orb_miss
sfx_absa_orb_missrelease
sfx_absa_singlezap1
sfx_absa_singlezap2
sfx_absa_taunt
sfx_absa_uair
sfx_absa_whip
sfx_absa_whip2
sfx_absa_whip3
sfx_absa_whip_charge
sfx_abyss_bomb_spawn
sfx_abyss_capture_end
sfx_abyss_capturing
sfx_abyss_despawn
sfx_abyss_explosion
sfx_abyss_explosion_big
sfx_abyss_explosion_start
sfx_abyss_hazard_burst
sfx_abyss_hazard_hit
sfx_abyss_hazard_start
sfx_abyss_hex_curse
sfx_abyss_hex_hit
sfx_abyss_portal_intro
sfx_abyss_portal_spawn
sfx_abyss_rumble
sfx_abyss_seed_explode
sfx_abyss_seed_fall
sfx_abyss_seed_land
sfx_abyss_spawn
sfx_bigplant_clamp
sfx_bigplant_eat
sfx_bigplant_lunge
sfx_birdclap
sfx_birdflap
sfx_bird_downspecial
sfx_bird_downspecial_end
sfx_bird_nspecial
sfx_bird_nspecial2
sfx_bird_screech
sfx_bird_sidespecial
sfx_bird_sidespecial_start
sfx_bird_upspecial
sfx_bite
sfx_blink_dash
sfx_blow_heavy1
sfx_blow_heavy2
sfx_blow_medium1
sfx_blow_medium2
sfx_blow_medium3
sfx_blow_weak1
sfx_blow_weak2
sfx_boss_explosion
sfx_boss_final_cannon
sfx_boss_final_charge
sfx_boss_fireball
sfx_boss_fireball_big
sfx_boss_fireball_land
sfx_boss_laser
sfx_boss_laser_hit
sfx_boss_shine
sfx_boss_vortex
sfx_boss_vortex_end
sfx_boss_vortex_start
sfx_bubblemouth
sfx_bubblepop
sfx_bubblespray
sfx_bubblespray_breathless
sfx_burnapplied
sfx_burnconsume
sfx_burnend
sfx_buzzsaw_hit
sfx_buzzsaw_throw
sfx_charge_blade_ready
sfx_charge_blade_swing
sfx_chester_appear
sfx_chester_jump
sfx_chest_open
sfx_chest_rummage
sfx_clairen_dspecial_counter_active
sfx_clairen_dspecial_counter_success
sfx_clairen_fspecial_dash
sfx_clairen_fspecial_slash
sfx_clairen_hair
sfx_clairen_hit_med
sfx_clairen_hit_strong
sfx_clairen_hit_weak
sfx_clairen_nspecial_grab_miss
sfx_clairen_nspecial_grab_success
sfx_clairen_poke_med
sfx_clairen_poke_strong
sfx_clairen_poke_weak
sfx_clairen_spin
sfx_clairen_swing_med
sfx_clairen_swing_mega_delayed
sfx_clairen_swing_mega_instant
sfx_clairen_swing_strong
sfx_clairen_swing_weak
sfx_clairen_sword_activate
sfx_clairen_sword_deactivate
sfx_clairen_tip_assist
sfx_clairen_tip_loop
sfx_clairen_tip_med
sfx_clairen_tip_strong
sfx_clairen_tip_weak
sfx_clairen_uspecial_rise
sfx_clairen_uspecial_swing
sfx_coin_capture
sfx_coin_collect
sfx_crunch
sfx_crunch_water
sfx_dash_start
sfx_death1
sfx_death2
sfx_diamond_collect
sfx_diamond_small_collect
sfx_dizzy
sfx_dust_knuckle
sfx_ell_arc_small_missile_ground
sfx_ell_arc_taunt_collect
sfx_ell_arc_taunt_collide
sfx_ell_arc_taunt_end
sfx_ell_arc_taunt_start
sfx_ell_big_missile_fire
sfx_ell_big_missile_ground
sfx_ell_cooldown
sfx_ell_drill_loop
sfx_ell_drill_stab
sfx_ell_dspecial_drop
sfx_ell_dspecial_explosion_1
sfx_ell_dspecial_explosion_2
sfx_ell_dspecial_explosion_3
sfx_ell_dspecial_hit
sfx_ell_dspecial_stick
sfx_ell_dtilt1
sfx_ell_dtilt2
sfx_ell_eject
sfx_ell_explosion_medium
sfx_ell_fist_explode
sfx_ell_fist_fire
sfx_ell_fspecial_charge
sfx_ell_hover
sfx_ell_missile_loop
sfx_ell_nair
sfx_ell_overheat
sfx_ell_propeller_loop_heavy
sfx_ell_propeller_loop_light
sfx_ell_propeller_loop_med
sfx_ell_small_missile_fire
sfx_ell_small_missile_ground
sfx_ell_steam_hit
sfx_ell_steam_release
sfx_ell_strong_attack_explosion
sfx_ell_uspecial_explode
sfx_ell_uspecial_rebuild
sfx_ell_utilt_cannon
sfx_ell_utilt_fire
sfx_ell_utilt_hit
sfx_ell_utilt_loop
sfx_ell_utilt_retract
sfx_fishing_rod_cast
sfx_fishing_rod_catch
sfx_fishing_rod_land
sfx_fishing_rod_reel
sfx_fish_collect
sfx_flareo_rod
sfx_flare_razer
sfx_forsburn_breath
sfx_forsburn_cape_hit
sfx_forsburn_cape_multihit
sfx_forsburn_cape_swipe
sfx_forsburn_combust
sfx_forsburn_consume
sfx_forsburn_consume_fail
sfx_forsburn_consume_full
sfx_forsburn_disappear
sfx_forsburn_reappear
sfx_forsburn_reappear_hit
sfx_forsburn_spew2
sfx_forsburn_spew_end
sfx_forsburn_spew_smoke
sfx_forsburn_split
sfx_frog_croak
sfx_frog_dspecial_cast
sfx_frog_dspecial_hit
sfx_frog_dspecial_hit_ground
sfx_frog_dspecial_spit
sfx_frog_dspecial_swallow
sfx_frog_dstrong
sfx_frog_fspecial_cancel
sfx_frog_fspecial_charge_full
sfx_frog_fspecial_charge_gained_1
sfx_frog_fspecial_charge_gained_2
sfx_frog_fspecial_charge_loop
sfx_frog_fspecial_fire
sfx_frog_fspecial_start
sfx_frog_fstrong
sfx_frog_gong_hit
sfx_frog_jab
sfx_frog_nspecial_cast
sfx_frog_nspecial_shove
sfx_frog_uspecial_cast
sfx_frog_uspecial_divekick
sfx_frog_uspecial_spin
sfx_frog_ustrong
sfx_gem_collect
sfx_ghost_glove
sfx_go
sfx_grass_creature
sfx_gus_dirt
sfx_gus_jump
sfx_gus_land
sfx_gus_propeller_dagger_wall
sfx_holy_die
sfx_holy_grass
sfx_holy_lightning
sfx_holy_tablet
sfx_holy_tablet_appear
sfx_holy_tablet_spawning
sfx_holy_textbox
sfx_icehit_heavy1
sfx_icehit_heavy2
sfx_icehit_medium1
sfx_icehit_medium2
sfx_icehit_weak1
sfx_icehit_weak2
sfx_ice_back_air
sfx_ice_burst_up
sfx_ice_chain
sfx_ice_dspecial_form
sfx_ice_dspecial_ground
sfx_ice_end
sfx_ice_fspecial_hit_ground
sfx_ice_fspecial_roar
sfx_ice_ftilt
sfx_ice_hammerstart
sfx_ice_nspecial_armor
sfx_ice_nspecial_hit_ground
sfx_ice_on_player
sfx_ice_shatter
sfx_ice_shatter_big
sfx_ice_shieldup
sfx_ice_sleep
sfx_ice_uspecial_jump
sfx_ice_uspecial_start
sfx_ice_wake
sfx_infinidagger
sfx_jumpair
sfx_jumpground
sfx_kragg_rock_land
sfx_kragg_rock_pillar
sfx_kragg_rock_pull
sfx_kragg_rock_shatter
sfx_kragg_roll_end
sfx_kragg_roll_land
sfx_kragg_roll_loop
sfx_kragg_roll_start
sfx_kragg_roll_turn
sfx_kragg_spike
sfx_kragg_throw
sfx_land
sfx_land_heavy
sfx_land_light
sfx_land_med
sfx_land_med2
sfx_leafy_hit1
sfx_leafy_hit2
sfx_leafy_hit3
sfx_leaves
sfx_may_arc_coineat
sfx_may_arc_cointoss
sfx_may_arc_five
sfx_may_arc_hit
sfx_may_arc_plant
sfx_may_arc_talk
sfx_may_arc_talkstart
sfx_may_root
sfx_may_whip1
sfx_may_whip2
sfx_may_wrap1
sfx_may_wrap2
sfx_metal_hit_strong
sfx_metal_hit_weak
sfx_mobile_gear_deploy
sfx_mobile_gear_jump
sfx_mobile_gear_move
sfx_mobile_gear_wall
sfx_obstacle_hit
sfx_old_orca_bite
sfx_orcane_dsmash
sfx_orcane_fspecial
sfx_orcane_fspecial_pud
sfx_orca_absorb
sfx_orca_bite
sfx_orca_crunch
sfx_orca_roll
sfx_orca_roll_snow
sfx_orca_shake
sfx_orca_shake_water
sfx_orca_snow_evaporate
sfx_orca_snow_mouth
sfx_orca_soak
sfx_ori_bash_hit
sfx_ori_bash_launch
sfx_ori_bash_projectile
sfx_ori_bash_use
sfx_ori_charged_flame_charge
sfx_ori_charged_flame_charge2
sfx_ori_charged_flame_hit
sfx_ori_charged_flame_release
sfx_ori_dash_attack_perform
sfx_ori_dsmash_seinhits
sfx_ori_dsmash_skitter_alone
sfx_ori_dsmash_skitter_sein
sfx_ori_dspecial_bash_miss
sfx_ori_dtilt_perform
sfx_ori_energyhit_heavy
sfx_ori_energyhit_medium
sfx_ori_energyhit_weak
sfx_ori_energy_hit
sfx_ori_glide_end
sfx_ori_glide_featherout
sfx_ori_glide_hit
sfx_ori_glide_start
sfx_ori_grenade_aim
sfx_ori_grenade_hit
sfx_ori_grenade_hit_ground
sfx_ori_grenade_launch
sfx_ori_seinhit_heavy
sfx_ori_seinhit_medium
sfx_ori_seinhit_weak
sfx_ori_sein_fstrong
sfx_ori_sein_fstrong_hit
sfx_ori_sein_fstrong_hit_final
sfx_ori_sein_strong_start
sfx_ori_spirit_flame_1
sfx_ori_spirit_flame_2
sfx_ori_spirit_flame_hit_1
sfx_ori_spirit_flame_hit_2
sfx_ori_stomp_hit
sfx_ori_stomp_hitplayer
sfx_ori_stomp_spin
sfx_ori_superjump_sein
sfx_ori_taunt
sfx_ori_taunt2
sfx_ori_uptilt
sfx_ori_uptilt_single
sfx_ori_ustrong_charge
sfx_ori_ustrong_launch
sfx_owl0
sfx_owl1
sfx_owl2
sfx_owl3
sfx_owl4
sfx_parry_success
sfx_parry_use
sfx_phase_locket
sfx_pillar_crumble
sfx_plant_eat
sfx_plant_fat
sfx_plant_ready
sfx_plant_shoot
sfx_plant_stepped
sfx_plasma_field_loop
sfx_playerdefeated
sfx_poison_hit_med
sfx_poison_hit_strong
sfx_poison_hit_weak
sfx_propeller_dagger_draw
sfx_propeller_dagger_loop
sfx_propeller_dagger_release
sfx_quick_dodge
sfx_rag_axe_hitsground
sfx_rag_axe_swing
sfx_rag_mark
sfx_rag_plant_eat
sfx_rag_plant_ready
sfx_rag_plant_shoot
sfx_rag_root
sfx_rag_whip
sfx_ring_crowd
sfx_roll
sfx_sand_screech
sfx_sand_yell
sfx_shop_buy
sfx_shop_close
sfx_shop_invalid
sfx_shop_move
sfx_shop_open
sfx_shovel_brandish
sfx_shovel_dig
sfx_shovel_hit_heavy1
sfx_shovel_hit_heavy2
sfx_shovel_hit_light1
sfx_shovel_hit_light2
sfx_shovel_hit_med1
sfx_shovel_hit_med2
sfx_shovel_knight_die
sfx_shovel_knight_fanfare
sfx_shovel_swing_heavy1
sfx_shovel_swing_heavy2
sfx_shovel_swing_light1
sfx_shovel_swing_light2
sfx_shovel_swing_med1
sfx_shovel_swing_med2
sfx_spin
sfx_spin_longer
sfx_springgo
sfx_springswitch
sfx_stage_pillar
sfx_swipe_heavy1
sfx_swipe_heavy2
sfx_swipe_medium1
sfx_swipe_medium2
sfx_swipe_weak1
sfx_swipe_weak2
sfx_swish_heavy
sfx_swish_heavy2
sfx_swish_medium
sfx_swish_weak
sfx_syl_dspecial_growth
sfx_syl_dspecial_howl
sfx_syl_dspecial_howlgrowth
sfx_syl_dspecial_plantaway
sfx_syl_dstrong
sfx_syl_fspecial_bite
sfx_syl_fstrong
sfx_syl_fstrong_final
sfx_syl_nspecial
sfx_syl_nspecial_flowerhit
sfx_syl_nspecial_plantgrowth
sfx_syl_promo1
sfx_syl_uspecial_travel_loop
sfx_syl_uspecial_travel_start
sfx_syl_ustrong
sfx_syl_ustrong_part1
sfx_syl_ustrong_part2
sfx_syl_ustrong_part3
sfx_tow_anchor_land
sfx_tow_anchor_start
sfx_troupple_fin_flap
sfx_troupple_fish_splash_in
sfx_troupple_fish_splash_out
sfx_troupple_rumble
sfx_troupple_splash_big
sfx_troupple_swipe
sfx_upbcharge
sfx_upbmove
sfx_war_horn
sfx_watergun_fire
sfx_watergun_splash
sfx_waterhit_heavy
sfx_waterhit_heavy2
sfx_waterhit_medium
sfx_waterhit_weak
sfx_waterwarp
sfx_waterwarp_start
sfx_waveland_abs
sfx_waveland_cla
sfx_waveland_ell
sfx_waveland_eta
sfx_waveland_fors
sfx_waveland_gus
sfx_waveland_kra
sfx_waveland_may
sfx_waveland_orc
sfx_waveland_ori
sfx_waveland_ran
sfx_waveland_syl
sfx_waveland_wra
sfx_waveland_zet
sfx_zap
sfx_zetter_downb
sfx_zetter_fireball_fire
sfx_zetter_shine
sfx_zetter_shine_charged
sfx_zetter_shine_taunt
sfx_zetter_upb_hit


// VFX List
0   - redirects to 301
1   - no visual effect
301 - basic small (default)
302 - basic small with spin effect in center
303 - basic small directional
304 - basic large
305 - basic sweetspot
19  - sweetspot small
3   - fire small
4   - fire directional
148 - fire large

121 - plasma fspecial X
123 - plasma fspecial X hit
124 - plasma hit small
125 - tipper hit small X
126 - tipper hit small cross
127 - tipper hit large
128 - plasma hit small cross
129 - plasma hit small X
130 - plasma hit large X
256 - plasma orb break

194 - wind small
156 - wind large
196 - wind extra large
11  - feathers side small
12  - feathers up small
146 - feathers side large
147 - feathers up large

15 - seed break 1
16  - seed break 2
17  - leaf small
18  - leaf tiny
198 - leaf large
159 - leaf extra large

131 - flower large
132 - flower small
133 - flower sweetspot
134 - wood large
135 - wood small
162 - wood extra large

204 - fire whip large
136 - metal break
137 - molten metal break

20  - lightning small
21  - lightning medium
22  - lightning directional
197 - lightning large
157 - lightning extra large

192 - rock large
193 - rock small
155 - rock extra large
13  - smoke large
14  - smoke small
5 - dark water small
6   - light water small
7   - light + dark water small
8   - dark water directional
9   - light water directional
10  - light + dark water directional
149 - dark water medium
150 - light water medium
195 - water large
161 - water extra large

199 - ice large
158 - ice extra large
25  - ice shard long
26  - ice shard medium
27  - icy flash small
28  - old ice large
29  - old ice small

108 - spirit flame hit
109 - ori hit small
110 - ori hit large
111 - sein hit small
112 - sein hit large
113 - ori sweetspot
115 - light grenade explosion

116 - poison small
117 - poison large
118 - poison sweetspot
119 - poison large 2
160 - poison large 3
120 - poison extra large

138 - steam directional
139 - missile explode small
140 - rocket fist burst
141 - missile explode medium
142 - mine hit
143 - explosion large
144 - steam small
145 - mine combo explosion

306 - shovel effect
151 - buzzsaw destroy
152 - ghost glove disappear
153 - mobile gear destroy
154 - dirt block destroy
250 - coin capture
251 - flareo rod hit
252 - SK Dstrong hit small
253 - SK Dstrong hit large
254 - War Horn hit

66  - portal small
67  - abyss small

Angle Flippers
0 = Sends at the exact knockback_angle every time
1 = Sends away from the center of the enemy player
2 = Sends toward the center of the enemy player
3 = Horizontal knockback sends away from the center of the hitbox
4 = Horizontal knockback sends toward the center of the hitbox
5 = Horizontal knockback is reversed
6 = Horizontal knockback sends away from the enemy player
7 = Horizontal knockback sends toward the enemy player
8 = Sends away from the center of the hitbox
9 = Sends toward the center of the hitbox

full sound function
sound_play(asset_get( "sfx_ell_steam_hit" ),false,noone,.15, .4 + (.1 * random_func(1, 3, false ))); // soundID,looping,panning,volume,pitch / Pitch range from .4 to .7

*/

