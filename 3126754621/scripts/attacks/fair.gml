set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 8);

//sweetspot
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);

//sourspots
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, 30);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);

//wing
//sweetspot
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 0);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, 5);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 1);

//sourspots
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 0);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 35);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, 50);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 0);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 55);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 60);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 1);

//ruby
//sweetspot
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 0);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, HFX_MOL_BOOM_FLARE);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 7, HG_EFFECT, 1);

//bomb
//sweetspot
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 0);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FAIR, 8, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 13);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, HFX_ELL_BOOM_BIG);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 1);