set_attack_value(AT_DTILT_MACH, AG_CATEGORY, 2);
set_attack_value(AT_DTILT_MACH, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT_MACH, AG_SPRITE, sprite_get("dtilt_mach"));
set_attack_value(AT_DTILT_MACH, AG_HURTBOX_SPRITE, sprite_get("dtilt_mach_hurt"));
set_attack_value(AT_DTILT_MACH, AG_NUM_WINDOWS, 2);

//loop
set_window_value(AT_DTILT_MACH, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT_MACH, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT_MACH, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT_MACH, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT_MACH, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//loop
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DTILT_MACH, 2, AG_WINDOW_TYPE, 9);

//hitboxes
set_num_hitboxes(AT_DTILT_MACH, 1);

//forward
set_hitbox_value(AT_DTILT_MACH, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT_MACH, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT_MACH, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DTILT_MACH, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT_MACH, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT_MACH, 1, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_DTILT_MACH, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT_MACH, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT_MACH, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT_MACH, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT_MACH, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT_MACH, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DTILT_MACH, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT_MACH, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT_MACH, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT_MACH, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT_MACH, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT_MACH, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT_MACH, 1, HG_HIT_LOCKOUT, 1);

//munophone
set_attack_value(AT_DTILT_MACH, AG_MUNO_ATTACK_NAME, "Dtilt mach");

set_attack_value(AT_DTILT_MACH, AG_MUNO_ATTACK_FAF, "-");
