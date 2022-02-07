set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//jab1 start
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .9);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("monarch_woosh1"));



//jab1 active
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .9);

//jab1 end
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .8);

//jab2 start
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, .8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, sound_get("monarch_woosh2"));


//jab2 active
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, .5);


//jab2 end
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_CANCEL_FRAME, 99);
set_window_value(AT_FAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, .5);

//jab3 start
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FAIR, 7, AG_WINDOW_CUSTOM_GRAVITY, .5);

//jab3 active
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FAIR, 8, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_SFX, sound_get("monarch_gunshot1"));


//jab3 end
set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FAIR, 9, AG_WINDOW_CANCEL_FRAME, 99);
set_window_value(AT_FAIR, 9, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_CUSTOM_GRAVITY, .5);

//jab4 start
set_window_value(AT_FAIR, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FAIR, 10, AG_WINDOW_CUSTOM_GRAVITY, .5);
set_window_value(AT_FAIR, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_SFX, sound_get("monarch_woosh3"));

//jab4 active
set_window_value(AT_FAIR, 11, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 11, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_FAIR, 11, AG_WINDOW_CUSTOM_GRAVITY, .6);
set_window_value(AT_FAIR, 11, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FAIR, 11, AG_WINDOW_VSPEED, -6);

//jab4 end
set_window_value(AT_FAIR, 12, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 12, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FAIR, 12, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(AT_FAIR,4);

// Swipe
set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 88);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("monarch_knifehit1"));
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);

// Pistol whip
set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 76);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("monarch_pistolwhip"));
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);

// Shot
set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("monarch_gunhit1"));
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);

// Finisher
set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 11);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 94);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 30);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("monarch_knifehit2"));
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);