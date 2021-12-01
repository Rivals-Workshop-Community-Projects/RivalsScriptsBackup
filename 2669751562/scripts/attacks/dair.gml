set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.07);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 12);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DAIR, 1, HG_EFFECT, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 0);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, get_hitbox_value(AT_DAIR, 1, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, get_hitbox_value(AT_DAIR, 2, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, get_hitbox_value(AT_DAIR, 1, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, get_hitbox_value(AT_DAIR, 2, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, get_hitbox_value(AT_DAIR, 1, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, get_hitbox_value(AT_DAIR, 2, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, get_hitbox_value(AT_DAIR, 1, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 8);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 27);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, get_hitbox_value(AT_DAIR, 2, HG_LIFETIME));
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_X));
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, get_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y));
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 9);