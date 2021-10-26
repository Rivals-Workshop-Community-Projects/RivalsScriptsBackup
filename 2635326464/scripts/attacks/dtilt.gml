set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

// startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("TanookiSwing"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);

//active
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//endlag
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 9)
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_num_hitboxes(AT_DTILT, 5);


set_hitbox_value(AT_DTILT, 1, HG_MUNO_HITBOX_NAME, "Front hitbox 1");

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("TanookiHit"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 1, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(AT_DTILT, 2, HG_MUNO_HITBOX_NAME, "Front hitbox 2");

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -11);

set_hitbox_value(AT_DTILT, 3, HG_MUNO_HITBOX_NAME, "Center hitbox");

//that's the center one
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 22);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("TanookiHit"));
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 302);

set_hitbox_value(AT_DTILT, 4, HG_MUNO_HITBOX_NAME, "Back hitbox 1");

set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -11);

set_hitbox_value(AT_DTILT, 5, HG_MUNO_HITBOX_NAME, "Back hitbox 2");

set_hitbox_value(AT_DTILT, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, -66);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -11);


set_attack_value(AT_DTILT, AG_MUNO_ATTACK_MISC_ADD, "You can use this move while dashing and preserve some of the speed. Has 10 frames of cooldown.");
set_attack_value(AT_DTILT, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH)));