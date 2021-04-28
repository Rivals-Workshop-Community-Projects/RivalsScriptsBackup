set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTILT,6);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 110);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_UTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 91);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_UTILT, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, -30);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 30);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .20);
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
