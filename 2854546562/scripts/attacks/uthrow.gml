set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_CATEGORY, 2);

// THIS IS BACK THROW

//Windup
set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Hit
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 23);

//End
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 26);



set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 7);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 3)
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTHROW, 1, HG_DRIFT_MULTIPLIER, 1.2);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_kragg_throw"));
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 2);

