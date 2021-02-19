set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_LANDING_LAG, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.05);


set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);


set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, sound_get("snap1"));
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);



set_num_hitboxes(AT_DTILT, 4);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 72);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 133);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -127);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 68);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 155);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -180);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 85);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 9);
set_hitbox_value(AT_DTILT, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

