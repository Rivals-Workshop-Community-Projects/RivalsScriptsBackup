//done

set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 9);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 5);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 10);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, -5);

set_num_hitboxes(AT_FTILT, 5);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 88);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 90);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 140);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 135);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 130);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 95);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 59);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FTILT, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 55);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 30);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));