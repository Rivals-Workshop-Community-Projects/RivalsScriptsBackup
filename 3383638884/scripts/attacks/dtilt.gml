set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);

//forward
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 0);

//back with sfx
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 2);

//comeback
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//hitboxes
set_num_hitboxes(AT_DTILT, 4);

//forward sweetspot
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.4);

set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

//forward sourspot
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.2);

set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 1);

//back sweetspot
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 150);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.6);

set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -80);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -52);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);

//back sourspot
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 110);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, 0.4);

set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, 2);

//munophone
set_hitbox_value(AT_DTILT, 1, HG_MUNO_HITBOX_NAME, "Forward");
set_hitbox_value(AT_DTILT, 2, HG_MUNO_HITBOX_NAME, "Forward Tip");
set_hitbox_value(AT_DTILT, 3, HG_MUNO_HITBOX_NAME, "Back");
set_hitbox_value(AT_DTILT, 4, HG_MUNO_HITBOX_NAME, "Back Tip");
