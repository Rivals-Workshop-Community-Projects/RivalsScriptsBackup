set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 4);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 34);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -27);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y,-50);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 27);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 275);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTILT, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 3, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, -32);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -7);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 28);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 21);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 250);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UTILT, 4, HG_TECHABLE, 1);