set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4); //Iasa
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_UTILT, 5);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 42);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 4); //horizontal towards center
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1); //Cannot tech
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 42);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9); //towards center
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 2, HG_TECHABLE, 1); //Cannot tech
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 21);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 42);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 9); //towards center
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 1); //Cannot tech
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 44);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1); //top hitbox for first hit
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 19);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 44);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 44);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 5, HG_TECHABLE, 1); //Cannot tech
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));