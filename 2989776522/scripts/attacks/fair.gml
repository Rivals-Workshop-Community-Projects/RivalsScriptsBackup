set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 13);

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 7);

//sourspot (now unused)
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 20);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//sweetspot
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//spike
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 75);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, 5);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//spike (same thing, but higher priority for aerial opponents)
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 70);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, 20);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 4, HG_GROUNDEDNESS, 2);

//late hit
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, 30);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 220);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//late hit 2
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, 40);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 140);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//late hit 3
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 30);
//set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, -30);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, 40);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_FAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 140);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FAIR, 7, HG_HITSTUN_MULTIPLIER, 0.75);