//Credit to Mawral (Epinel) for original suplex code
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.27);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//grab hit 1
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.27);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//grab hit 2
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.27);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//whiff cooldown
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

//rotate
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, 0);

//throw startup 1
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_ghost_glove"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//throw startup 2
set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//throw hit
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//recovery
set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 19);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_FSTRONG, 11, AG_WINDOW_TYPE,1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 24);

//parry stun window
set_window_value(AT_FSTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_FSTRONG, 4);


//grab hit 1.
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 3); //extra hitpause for the grab
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1); //can't tech

//grab hit 2.
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 66);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 34);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 3); //extra hitpause for the grab
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FSTRONG, 2, HG_TECHABLE, 1); //can't tech

//throw hit - grounded
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, -66);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 66);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 105);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1); 
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 120);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1); 
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, 1);