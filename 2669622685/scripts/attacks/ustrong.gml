set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//charge window
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 20); // 4
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_absa_dashup"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_GOTO, 2);

//startup normal
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5); // 3
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

//hit normal
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 23);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//endlag normal
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_GOTO, 8);

//startup static
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 5); // 3
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip2"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 4);

//hit static
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 23);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 13);

//endlag static
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_GOTO, 8);

//endlag all
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_USTRONG, 2);

//normal hit
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 23);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 53);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.2); 
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8); 
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//static hit
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 23);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 127);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1); 
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 9); 
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("elechurt_extreme"));