set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 24);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//Startup window
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSTRONG, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

//Lunge window
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));

//Looping dash window
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

//Recovery window if lunge attack misses
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 42);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, -10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_FSTRONG, 4, AG_WINDOW_CANCEL_FRAME, 1);

//First Jab
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_VSPEED, 0);

//2nd Jab
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_FSTRONG, 9, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_VSPEED, 0);

//3rd Jab
set_window_value(AT_FSTRONG, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_FSTRONG, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSTRONG, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_VSPEED, 0);

//4th Jab
set_window_value(AT_FSTRONG, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSTRONG, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_FSTRONG, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_VSPEED, 0);

//5th Jab
set_window_value(AT_FSTRONG, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG, 17, AG_USES_CUSTOM_GRAVITY, 0);

set_window_value(AT_FSTRONG, 18, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 18, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_ANIM_FRAME_START, 40);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);


set_window_value(AT_FSTRONG, 19, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_ANIM_FRAME_START, 41);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_VSPEED, 2);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_GOTO, 24);


//Bonus Windows for full charge finisher
//Leap backwards
set_window_value(AT_FSTRONG, 20, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_ANIM_FRAME_START, 36);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSTRONG, 20, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSTRONG, 20, AG_WINDOW_HSPEED, -14);

//Startup
set_window_value(AT_FSTRONG, 21, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSTRONG, 21, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
//set_window_value(AT_FSTRONG, 21, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSTRONG, 21, AG_WINDOW_HSPEED, -4);

//Dash Start
set_window_value(AT_FSTRONG, 22, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 22, AG_WINDOW_HSPEED, 14);
//set_window_value(AT_FSTRONG, 22, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, 22, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_FSTRONG, 22, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
 

//Dash
set_window_value(AT_FSTRONG, 23, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_HSPEED, 14);
set_window_value(AT_FSTRONG, 23, AG_WINDOW_GOTO, 17);

//Ending window
set_window_value(AT_FSTRONG, 24, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_ANIM_FRAME_START, 48);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_VSPEED, 2);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 24, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);


//Hitboxes
set_num_hitboxes(AT_FSTRONG, 8);

//Lunge hitboxes
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2 );
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, -7);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("amber_magic_hit-weak"));
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, -7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, -1);

//Jab 1 hitbox
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 36);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSTRONG, 2, HG_FORCE_FLINCH, 1 );
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("amber_magic_hit-weak"));
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_CAMERA_SHAKE, -1);
//set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 5);

//Jab 2 hitbox
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("amber_magic_hit-weak"));
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_CAMERA_SHAKE, -1 );
//set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 7);

//Jab 3 hitbox
set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 12);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 36);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 20);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("amber_magic_hit-weak"));
set_hitbox_value(AT_FSTRONG, 5, HG_EXTRA_CAMERA_SHAKE, -1 );

//Jab 4 hitbox
set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 15);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_EXTRA_HITPAUSE, 20); // Modified from hit_player
//set_hitbox_value(AT_FSTRONG, 6, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_FSTRONG, 6, HG_TECHABLE, 1); 
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, sound_get("amber_magic_hit-weak"));
set_hitbox_value(AT_FSTRONG, 6, HG_EXTRA_CAMERA_SHAKE, -1 );

//Finisher hitbox
set_hitbox_value(AT_FSTRONG, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 18);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 14);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 7, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 1.06);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_FSTRONG, 7, HG_TECHABLE, 0);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, 112   );
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
//set_hitbox_value(AT_FSTRONG, 7, HG_EXTRA_CAMERA_SHAKE, -1 );

//Full Charge Finisher Dash Hitbox
set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_GROUP, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_SHAPE, 2 );
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 22);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 23);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, -7);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 8, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 8, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_DAMAGE, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 8, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_TECHABLE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_EXTRA_CAMERA_SHAKE, -1);
