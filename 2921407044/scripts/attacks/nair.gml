set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
//set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, -1);

//Window 1 - Frame 0 - 2 - Start up no hitbox
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Window 2 - Frame 3 - Hitbox
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

//window 3 - Frame 4 - Transition to swinging no hitbox
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//Window 4 - Frame 5 - 7 - Spinning weapon - Ocelot from MGS3 BOYZZZZ
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 14); // Referenced SGT. Kero for this
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START,5);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));

//Window 5 - Frame 8 - End Lag
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START,8);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG,1);

//Hitbox Data
set_num_hitboxes(AT_NAIR,5);

//Window 2 - Hitbox 1 - Jab froward hitbox
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, get_window_value(AT_NAIR,2,AG_WINDOW_LENGTH));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 61);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Window 2 - Hitbox 2 - Jab Rear most hitbox
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, get_window_value(AT_NAIR,2,AG_WINDOW_LENGTH));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 53);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_NAIR, 2, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

// Window 4 - Hitbox 3 - Spin 1 hitbox
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 71);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 69);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_NAIR, 3, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

// Window 4 - Hitbox 4 - 2nd knockback less hit of the spin attack
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 71);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 69);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, hfx_small);
set_hitbox_value(AT_NAIR, 4, HG_HIT_PARTICLE_NUM, hp_small);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

// Window 4 - Hitbox 5 - Final hit of the spin attack
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 71);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 69);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));