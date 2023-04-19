set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 5);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 72);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 55);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 72);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_X, 31);
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_Y, -9);
set_hitbox_value(AT_DTILT, 5, HG_WIDTH, 72);
set_hitbox_value(AT_DTILT, 5, HG_HEIGHT, 28);
set_hitbox_value(AT_DTILT, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DTILT, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 5, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_DTILT, 5, HG_HITBOX_GROUP, -1);