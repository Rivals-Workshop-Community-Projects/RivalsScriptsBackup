set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 6);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 5);

//hit 1 lower
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1);

//hit 1 upper
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 45);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1);

//launcher sour
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_PARTICLE_NUM, 2);

//tipper
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 58);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -125);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_PARTICLE_NUM, 2);