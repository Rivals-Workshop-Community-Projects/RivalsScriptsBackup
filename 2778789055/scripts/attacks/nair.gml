set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//startup1
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);

//attack1
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//startup2
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_VSPEED, -1);

//attack2
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//endlag
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 3);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 52);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 2, HG_DRIFT_MULTIPLIER, 1);

set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 65);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 3, HG_DRIFT_MULTIPLIER, 1);