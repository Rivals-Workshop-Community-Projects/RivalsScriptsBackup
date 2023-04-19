set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("hero_nail_art_cyclone_slash_long"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

//speeeeeeen
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 27);

//final attack
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//endlag
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 8);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -25);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, -25);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DSTRONG, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, -25);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DSTRONG, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 7);

set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, 75);
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 8);