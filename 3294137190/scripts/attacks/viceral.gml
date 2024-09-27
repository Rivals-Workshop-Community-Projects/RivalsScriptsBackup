set_attack_value(AT_VICERAL, AG_SPRITE, sprite_get("viceral"));
set_attack_value(AT_VICERAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_VICERAL, AG_HURTBOX_SPRITE, sprite_get("viceral_hurt"));

//Startup
set_window_value(AT_VICERAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_VICERAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_VICERAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_VICERAL, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko3"));
set_window_value(AT_VICERAL, 1, AG_WINDOW_SFX_FRAME, 16);

// Active (Try to grab)
set_window_value(AT_VICERAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_VICERAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_VICERAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_VICERAL, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_VICERAL, 2, AG_WINDOW_HSPEED_TYPE, 2);


//Whiff
set_window_value(AT_VICERAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_VICERAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_VICERAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_VICERAL, 3, AG_WINDOW_GOTO, 6);

//Grab Connected
set_window_value(AT_VICERAL, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_VICERAL, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_VICERAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_VICERAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_VICERAL, 4, AG_WINDOW_SFX, sound_get("viceral_attack_c"));
set_window_value(AT_VICERAL, 4, AG_WINDOW_SFX_FRAME, 8);

//Viceral Hitbox
set_window_value(AT_VICERAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_VICERAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_VICERAL, 5, AG_WINDOW_ANIM_FRAME_START, 22);
//set_window_value(AT_VICERAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_VICERAL, 5, AG_WINDOW_SFX, sound_get("viceral_attack_a"));

//Endlag
set_window_value(AT_VICERAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_VICERAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_VICERAL, 6, AG_WINDOW_ANIM_FRAME_START, 27);


set_num_hitboxes(AT_VICERAL, 2);

//Grab
set_hitbox_value(AT_VICERAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_VICERAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_VICERAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_VICERAL, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_VICERAL, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_VICERAL, 1, HG_WIDTH, 54);
set_hitbox_value(AT_VICERAL, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_VICERAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_VICERAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_VICERAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_VICERAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_VICERAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_VICERAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_VICERAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_VICERAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_VICERAL, 1, HG_HIT_SFX, sound_get("viceral_attack_a"));

//Grab
set_hitbox_value(AT_VICERAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_VICERAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_VICERAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_VICERAL, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_VICERAL, 2, HG_HITBOX_Y, -21);
set_hitbox_value(AT_VICERAL, 2, HG_WIDTH, 54);
set_hitbox_value(AT_VICERAL, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_VICERAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_VICERAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_VICERAL, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_VICERAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_VICERAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_VICERAL, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_VICERAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_VICERAL, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_VICERAL, 2, HG_HIT_SFX, sound_get("viceral_attack_b"));
set_hitbox_value(AT_VICERAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_VICERAL, 2, HG_VISUAL_EFFECT, viceral_vfx);