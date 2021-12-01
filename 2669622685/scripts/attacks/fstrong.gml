set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//charge window
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20); // 6
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_absa_dashup"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_GOTO, 2);

//startup normal
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

//hit normal
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

//endlag normal
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_GOTO, 8);

//startup static
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//hit static
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));

//endlag static
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_GOTO, 8);

set_num_hitboxes(AT_FSTRONG, 2);

//hit
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 21);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 68);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11); 
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);

//static
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 21);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 86);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 18); 
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.25);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("elechurt_extreme"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);