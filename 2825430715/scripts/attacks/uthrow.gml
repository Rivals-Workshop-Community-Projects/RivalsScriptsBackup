set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("airgrab"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 0);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("airgrab_hurt"));


set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 9*4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 7);

 
set_num_hitboxes(AT_UTHROW, 3);


set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UTHROW, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTHROW, 2, HG_WIDTH, 144);
set_hitbox_value(AT_UTHROW, 2, HG_HEIGHT, 104);
set_hitbox_value(AT_UTHROW, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 2, HG_DAMAGE, 26);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTHROW, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTHROW, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_UTHROW, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTHROW, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_UTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTHROW, 2, HG_HITBOX_GROUP, -1);
