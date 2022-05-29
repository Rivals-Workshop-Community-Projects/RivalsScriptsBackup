set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 4);

/*
Roses are red
Violets are blue
Why is ULFS Max
frame 22?
*/

//windup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_slash_m"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 20);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);
//slash
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
//KRAKA
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_mega_delayed"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
//(fall)
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.54);
//TOA
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.54);
//endlag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.54);

set_num_hitboxes(AT_FSPECIAL, 4);
//rise
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 86);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING,  0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_DRIFT_MULTIPLIER, 0.1);
//fall
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 39);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 88);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 300);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING,  0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);

//land sweet
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 10); //window 5 with code
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 104);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING,  1.4); //yeah
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
//land sour
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 10); //window 5 with code
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 43);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 150);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 97);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING,  0.4);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DRIFT_MULTIPLIER, 1);