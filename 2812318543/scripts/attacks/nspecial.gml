set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//hit 1
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_poke_weak"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.45);

//hit 2
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CANCEL_FRAME, 5);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.45);

//hit 3
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 6); //only active for 3
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 14);
//set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.45);

set_num_hitboxes(AT_NSPECIAL, 3);
//1
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 101);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
//2
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 121);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
//3
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 59);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 105);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 83);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hfx_elecbig);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 2);