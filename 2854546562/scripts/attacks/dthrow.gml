set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_CATEGORY, 2);

//Rising
set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Falling
set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 120);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 30);

//Crash
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 31);

//End
set_window_value(AT_DTHROW, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 33);

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 7);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 12)
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DTHROW, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, 2);

