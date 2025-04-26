set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 12);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

/*
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
*/