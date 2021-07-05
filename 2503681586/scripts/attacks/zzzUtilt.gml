set_attack_value(AT_UTHROW, AG_CATEGORY, 0);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("f_uair"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTHROW, AG_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("f_uair_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTHROW, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTHROW, 1);
//Sour
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .25);

