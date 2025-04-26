set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("beep5"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

//Charge
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);

//Judgement
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);


//Judge 1
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 2);

//Judge 2
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 3
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 4
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 5
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 6
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 7
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 8
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));

//Judge 9
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));
set_window_value(AT_FSPECIAL, 13, AG_WINDOW_HAS_SFX, 0);

//Judge 0
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)));
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES)));
set_window_value(AT_FSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, (get_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START)));


//Endlag
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_FSPECIAL,14);


//Judge 1
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .23);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));


//Judge 2
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


//Judge 3
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//Judge 4
set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_oly_nspecial_hit"));


//Judge 5
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 25);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_birdclap"));

//Judge 6
set_hitbox_value(AT_FSPECIAL, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_1"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 7, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 8, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 9, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FSPECIAL, 9, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_FSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_mol_flare_explode"));

//Judge 7
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 10, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 10, HG_ANGLE, -90);
set_hitbox_value(AT_FSPECIAL, 10, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 10, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_FSPECIAL, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 10, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL, 11, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 11, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 11, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 11, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 11, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 11, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 11, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSPECIAL, 11, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FSPECIAL, 11, HG_ANGLE, -90);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 11, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 11, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 11, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 11, HG_EFFECT, 15);
set_hitbox_value(AT_FSPECIAL, 11, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 11, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Judge 8
set_hitbox_value(AT_FSPECIAL, 12, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_WINDOW, 12);
set_hitbox_value(AT_FSPECIAL, 12, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 12, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 12, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 12, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 12, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL, 12, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 12, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 12, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 12, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 12, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 12, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_FSPECIAL, 12, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 12, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_FSPECIAL, 12, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));


//Judge 9
set_hitbox_value(AT_FSPECIAL, 13, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 13, HG_WINDOW, 13);
set_hitbox_value(AT_FSPECIAL, 13, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 13, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 13, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 13, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 13, HG_DAMAGE, 13);
set_hitbox_value(AT_FSPECIAL, 13, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 13, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 13, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSPECIAL, 13, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 13, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSPECIAL, 13, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 13, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_FSPECIAL, 13, HG_HIT_SFX, sound_get("ping"));

//Judge 10
set_hitbox_value(AT_FSPECIAL, 14, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 14, HG_WINDOW, 14);
set_hitbox_value(AT_FSPECIAL, 14, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 14, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 14, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 14, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 14, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 14, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 14, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 14, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FSPECIAL, 14, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 14, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_FSPECIAL, 14, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 14, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));