set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("headless_jab"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("headless_jab_hurt"));

//--------------------------------------------------------------
//１撃目
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//--------------------------------------------------------------
//１撃目
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//--------------------------------------------------------------
//１撃目
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HITPAUSE_FRAME, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 2);


//--------------------------------------------------------------
set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 38);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 15);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));