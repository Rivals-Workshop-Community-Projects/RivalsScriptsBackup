set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,5);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 0);
//Angle_Flipper: 10 -> 0
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -77);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 100);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 3);

//Body

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 0);