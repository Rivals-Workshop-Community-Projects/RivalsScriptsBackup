set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 12);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fspecial_boost"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

//Blast Off!
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//Driving Forward (Loop)
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//Drift Startup
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("fspecial_drift"));

//Drift Active
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

//Drift Endlag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 15);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Wheelie Startup (Upwards hit)
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med1"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 8);

//Wheelie Active (Slam)
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sound_get("fspecial_slam"));
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 10);

//Wheelie Endlag
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_GOTO, 15);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

//Trick Startup
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_SFX, sound_get("fspecial_trick"));

//Trick Active
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 37);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED, -12);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_swish_weak"));
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_SFX_FRAME, 5);

//Trick Endlag
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 40);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_GOTO, 15);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 19);

//Blast Off Hitbox 1
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);

//Loop Hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);

//Drift Hitbox
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_SDI_MULTIPLIER, 1);

//Wheelie Hitbox
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 17);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_SDI_MULTIPLIER, -1);

//Slam Hitbox
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_SDI_MULTIPLIER, 1);

//Trick First Hit
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -37);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 150);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_SDI_MULTIPLIER, -1);

//Trick Multihit 1
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 7, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 7, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL, 7, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 7, HG_SDI_MULTIPLIER, -1);

//Trick Multihit 2
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 8, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL, 8, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 8, HG_SDI_MULTIPLIER, -1);

//Trick Multihit 3
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 9, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 9, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 9, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 9, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_FSPECIAL, 9, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 9, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 9, HG_SDI_MULTIPLIER, -1);

//Trick Launcher
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_FSPECIAL, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 10, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 10, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 10, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, 10, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 10, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 10, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 10, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_FSPECIAL, 10, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_FSPECIAL, 10, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 10, HG_SDI_MULTIPLIER, 1);