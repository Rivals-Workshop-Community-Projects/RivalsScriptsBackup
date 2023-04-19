set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_boosted"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_boosted"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//startup (grounded)
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

//startup (aerial)
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

//start to dash
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 2);

//attack (downward dash)
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED, 13);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//landing
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 12);

//endlag
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_2, 4);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, hitsmoke);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, hitaffectstrong);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SDI_MULTIPLIER, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, hitaffectstrong);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL_2, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 160);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 1);         
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, hitaffectstrong);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_2, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DRIFT_MULTIPLIER, 1);
