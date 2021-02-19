set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//up-angled
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 0);
//down-angled
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//ftilt up
set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 52);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 63);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//ftilt down
set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 51);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -8);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 49);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .60);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));