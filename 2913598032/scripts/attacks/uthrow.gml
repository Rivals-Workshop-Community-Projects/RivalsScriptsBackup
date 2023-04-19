set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("dattack2"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("dattack2"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

// 1st Start
set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .9);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

// 1st Active and End
set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

// End
set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 10);


set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTHROW, 1, HG_TECHABLE, 1);