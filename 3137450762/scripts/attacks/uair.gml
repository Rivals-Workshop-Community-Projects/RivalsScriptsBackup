//La Reina uair.gml
set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

//Anticipation
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 9);

//Attack
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 7);

//Hold
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_HITPAUSE_FRAME, 8);

//Whiff
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//Grab transition
set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);

//Falling
set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 15);

//Land
set_window_value(AT_UAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 17);

//Throw
set_window_value(AT_UAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 8, AG_WINDOW_ANIM_FRAME_START, 23);

set_num_hitboxes(AT_UAIR, 2);

//Grab
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 63);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 88);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
//set_hitbox_value(AT_UAIR, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);

//Back-breaker
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 7);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 110);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 2, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 304);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
