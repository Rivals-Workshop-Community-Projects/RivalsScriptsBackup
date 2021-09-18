set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_OFF_LEDGE, 0)
//Jab 1 Startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//Jab 1 Active
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);


//Jab 1 Endlag
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Jab 2 Startup
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//Jab 2 Active
set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 2);


//Jab 2 Endlag
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Jab 3 Start Jump
set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 6);

//Jab 3 Jump Durration
set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 8);



//Jab 3 Active
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, sound_get("nair"));
set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 9);

//Jab 3 Endlag
set_window_value(AT_JAB, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 10, AG_WINDOW_CANCEL_FRAME, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 10);

//Jab 4 Jump Startup
set_window_value(AT_JAB, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 11, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 15);

//Jab 4 Jump 
set_window_value(AT_JAB, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 12, AG_WINDOW_ANIM_FRAME_START, 18);


//Jab 4 Active
set_window_value(AT_JAB, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 13, AG_WINDOW_SFX, sound_get("utilt"));
set_window_value(AT_JAB, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 19);

//Jab 4 Endlag
set_window_value(AT_JAB, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 14, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 14, AG_WINDOW_ANIM_FRAME_START, 21);


//Hitboxes
set_num_hitboxes(AT_JAB, 4);

//jab 1  hitbox
set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_EFFECT, 12);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//jab 2 hitbox
set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_EFFECT, 12);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);

//jab 3 hitbox
set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 9);

//set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 72);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, hisou_dir);
set_hitbox_value(AT_JAB, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("hisou_hit2"));


//jab 4 hitbox
set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 13);
//set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 75);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 100);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, hisou_small);
set_hitbox_value(AT_JAB, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, sound_get("hisou_hit3"));