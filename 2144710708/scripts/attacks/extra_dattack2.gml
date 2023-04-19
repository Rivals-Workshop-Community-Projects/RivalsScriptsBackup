// used for the second part of dash attack

set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 20);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);

// startup
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UTHROW, 1, AG_WINDOW_VSPEED, -6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);

// active
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 13);

// endlag
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_UTHROW, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 15);


set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 361);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);


