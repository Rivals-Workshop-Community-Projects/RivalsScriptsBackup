set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("knife_open1"));//TODO: later + not if invis (attack_update)

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CANCEL_FRAME, 8);

set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 17);
// set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_FSTRONG, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_FSTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG, 3);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
// set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 270+45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 303 );
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -8);
// set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 6);
// set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -8);
// set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -8);
// set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_COLOR, $FFFF00);