set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR, 18);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -46);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -76);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, -6);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, 22);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 10, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 10, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_Y, -74);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 10, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_NAIR, 11, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 11, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_X, -22);
set_hitbox_value(AT_NAIR, 11, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_NAIR, 12, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 12, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 12, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_X, 4);
set_hitbox_value(AT_NAIR, 12, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_NAIR, 13, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 13, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_Y, -68);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 13, HG_HITBOX_GROUP, 6);


set_hitbox_value(AT_NAIR, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 14, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 14, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 14, HG_WIDTH, 52);
set_hitbox_value(AT_NAIR, 14, HG_HEIGHT, 52);
set_hitbox_value(AT_NAIR, 14, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 14, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 14, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 14, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NAIR, 14, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 14, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 14, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 14, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 14, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 14, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 15, HG_PARENT_HITBOX, 14);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 15, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 15, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 15, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_NAIR, 16, HG_PARENT_HITBOX, 14);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 16, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 16, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 16, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_NAIR, 17, HG_PARENT_HITBOX, 14);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 17, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 17, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 17, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 17, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_NAIR, 18, HG_PARENT_HITBOX, 14);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 18, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 18, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 18, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_Y, -50);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 18, HG_HITBOX_GROUP, 6);


set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -54);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 82);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 82);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, hfx_rin_small);
set_hitbox_value(AT_NAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);