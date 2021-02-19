set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 17);
set_attack_value(AT_FTILT, AG_CATEGORY, 2);
set_attack_value(AT_FTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTILT, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FTILT, AG_LANDING_LAG, 18); //modified in attack_update
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//First Jab
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("amber_jab01_3"));

//set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4); //Ftilts 1-3 have their attacking window length modified from attack_update
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2+7);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5+7);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_CANCEL_FRAME, 10);

//2nd Jab
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 4, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6+7);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
//set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, sound_get("amber_jab02_2"));

set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8+7);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 11+7);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_CANCEL_FRAME, 10);

//3rd Jab
set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FTILT, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 12+7);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, sound_get("amber_jab01_3"));

set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 14+7);

set_window_value(AT_FTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 17+7);
set_window_value(AT_FTILT, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_CANCEL_FRAME, 10);

//4th Jab
set_window_value(AT_FTILT, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 10, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 10, AG_WINDOW_HSPEED, 4);
//set_window_value(AT_FTILT, 10, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FTILT, 10, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 10, AG_WINDOW_ANIM_FRAME_START, 18+7);
set_window_value(AT_FTILT, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FTILT, 11, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTILT, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 11, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 11, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 11, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 11, AG_WINDOW_ANIM_FRAME_START, 20+7);
//set_window_value(AT_FTILT, 11, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FTILT, 11, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FTILT, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 11, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_FTILT, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 12, AG_WINDOW_ANIM_FRAME_START, 25+7);
set_window_value(AT_FTILT, 12, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 12, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_FTILT, 12, AG_WINDOW_CANCEL_FRAME, 10);

//5th Jab
set_window_value(AT_FTILT, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 13, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 13, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 13, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 13, AG_WINDOW_HSPEED, 4);
//set_window_value(AT_FTILT, 13, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FTILT, 13, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FTILT, 13, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 13, AG_WINDOW_ANIM_FRAME_START, 28+7);
set_window_value(AT_FTILT, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 13, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTILT, 13, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FTILT, 14, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FTILT, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FTILT, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 14, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 14, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 14, AG_WINDOW_ANIM_FRAME_START, 33+7);
set_window_value(AT_FTILT, 14, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTILT, 14, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FTILT, 14, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 14, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_FTILT, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 15, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 15, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 15, AG_WINDOW_ANIM_FRAME_START, 34+7);
set_window_value(AT_FTILT, 15, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTILT, 15, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_FTILT, 15, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 15, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FTILT, 15, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
//set_window_value(AT_FTILT, 15, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 16, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 16, AG_WINDOW_ANIM_FRAME_START, 39+7);
set_window_value(AT_FTILT, 16, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTILT, 16, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_FTILT, 16, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 16, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FTILT, 16, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_FTILT, 16, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 17, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 17, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 17, AG_WINDOW_ANIM_FRAME_START, 40+7);
set_window_value(AT_FTILT, 17, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTILT, 17, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_FTILT, 17, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 17, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_FTILT, 17, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
//set_window_value(AT_FTILT, 17, AG_WINDOW_HAS_WHIFFLAG, 1);


//Hitboxes
set_num_hitboxes(AT_FTILT, 8);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.2);
//set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_FTILT, 1, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_FTILT, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
//set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_FTILT, 2, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_FTILT, 2, HG_GROUNDEDNESS, 1);
//set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
//set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 16);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 54);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_FTILT, 3, HG_TECHABLE, 1);
//set_hitbox_value(AT_FTILT, 3, HG_GROUNDEDNESS, 1);
//set_hitbox_value(AT_FTILT, 3, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_FTILT, 3, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_FTILT, 3, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 11);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 361);
//set_hitbox_value(AT_FTILT, 4, HG_FORCE_FLINCH, 1);
//set_hitbox_value(AT_FTILT, 4, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 4, HG_EXTRA_HITPAUSE, 3);
//set_hitbox_value(AT_FTILT, 4, HG_DRIFT_MULTIPLIER, 0.1);
//set_hitbox_value(AT_FTILT, 4, HG_TECHABLE, 1);256
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, sound_get("amber_magic_hit_medium1"));
set_hitbox_value(AT_FTILT, 4, HG_EXTRA_CAMERA_SHAKE, -1 );

set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 14);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FTILT, 5, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_FTILT, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 5, HG_ANGLE, 45);
//set_hitbox_value(AT_FTILT, 5, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FTILT, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 5, HG_HITPAUSE_SCALING, 1);
//set_hitbox_value(AT_FTILT, 5, HG_EXTRA_HITPAUSE, 10);
//set_hitbox_value(AT_FTILT, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 5, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
//set_hitbox_value(AT_FTILT, 5, HG_EXTRA_CAMERA_SHAKE, -1 );