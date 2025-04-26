set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 7);

//juggle
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sound_get("beep1"));

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, sound_get("beep2"));

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_SFX, sound_get("beep1"));

set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FTHROW, 6, AG_WINDOW_SFX, sound_get("beep4"));

//active and recovery
set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_FTHROW, 4);

//throw hitbox
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));

//juggling  these balls lmao
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_FTHROW, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_X, -14);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_FTHROW, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FTHROW, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTHROW, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTHROW, 4, HG_WINDOW, 5);
set_hitbox_value(AT_FTHROW, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FTHROW, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 4, HG_WIDTH, 40);
set_hitbox_value(AT_FTHROW, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FTHROW, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FTHROW, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTHROW, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTHROW, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 4, HG_ANGLE_FLIPPER, 7);