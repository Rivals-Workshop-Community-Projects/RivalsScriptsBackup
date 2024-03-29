set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);

// Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("bair"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);

// Active
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// Endlag
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

//hitbox
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -56);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 76);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_BAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("hisou_hit5"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 99);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -56);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 76);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_BAIR, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("hisou_hit2"));


set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -56);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 76);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, hisou_large);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_BAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("hisou_hit5"));