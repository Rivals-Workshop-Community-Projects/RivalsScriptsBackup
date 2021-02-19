set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 6);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -32);;
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.60);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.60);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0.70);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.60);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 5);