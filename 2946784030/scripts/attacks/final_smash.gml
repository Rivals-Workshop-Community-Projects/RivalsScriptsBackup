set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("wario_wallop"));
set_attack_value(49, AG_NUM_WINDOWS, 8);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("wario_wallop_hurt"));

set_attack_value(49, AG_USES_CUSTOM_GRAVITY, 1);

//Startup
set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 42);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("SFX_Final_Smash"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 15);

//Dash Forward
set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 24);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(49, 2, AG_WINDOW_HSPEED, 15);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(49, 2, AG_WINDOW_GOTO, 8);

//Send Upward
set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 28);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED, -18);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.25);

//Wallop
set_window_value(49, 4, AG_WINDOW_TYPE, 9);
set_window_value(49, 4, AG_WINDOW_LENGTH, 24);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Piledriver
set_window_value(49, 5, AG_WINDOW_TYPE, 10);
set_window_value(49, 5, AG_WINDOW_LENGTH, 8);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 19);

//set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(49, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);

//Slam
set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 2);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 21);

//Recoil
set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 28);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(49, 7, AG_WINDOW_HSPEED, -4);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(49, 7, AG_WINDOW_VSPEED, -12);
set_window_value(49, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(49, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Whiff
set_window_value(49, 8, AG_WINDOW_TYPE, 7);
set_window_value(49, 8, AG_WINDOW_LENGTH, 16);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(49, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_num_hitboxes(49, 8);

//Launcher
set_hitbox_value(49, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 1, HG_LIFETIME, 20);
set_hitbox_value(49, 1, HG_HITBOX_X, 16);
set_hitbox_value(49, 1, HG_HITBOX_Y, -28);
set_hitbox_value(49, 1, HG_WIDTH, 72);
set_hitbox_value(49, 1, HG_HEIGHT, 60);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 8);
set_hitbox_value(49, 1, HG_ANGLE, 80);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, 0);

//Wallop Hitboxes

//Forward Smack
set_hitbox_value(49, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 4);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_HITBOX_X, 32);
set_hitbox_value(49, 2, HG_HITBOX_Y, -28);
set_hitbox_value(49, 2, HG_WIDTH, 72);
set_hitbox_value(49, 2, HG_HEIGHT, 60);
set_hitbox_value(49, 2, HG_SHAPE, 2);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_DAMAGE, 1);
set_hitbox_value(49, 2, HG_ANGLE, 0);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);

//Upward Smack
set_hitbox_value(49, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 3, HG_LIFETIME, 2);
set_hitbox_value(49, 3, HG_HITBOX_X, 32);
set_hitbox_value(49, 3, HG_HITBOX_Y, -28);
set_hitbox_value(49, 3, HG_WIDTH, 72);
set_hitbox_value(49, 3, HG_HEIGHT, 60);
set_hitbox_value(49, 3, HG_SHAPE, 2);
set_hitbox_value(49, 3, HG_PRIORITY, 2);
set_hitbox_value(49, 3, HG_DAMAGE, 1);
set_hitbox_value(49, 3, HG_ANGLE, 90);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(49, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);

//Downward Smack
set_hitbox_value(49, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_WINDOW, 4);
set_hitbox_value(49, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(49, 4, HG_LIFETIME, 2);
set_hitbox_value(49, 4, HG_HITBOX_X, 32);
set_hitbox_value(49, 4, HG_HITBOX_Y, -28);
set_hitbox_value(49, 4, HG_WIDTH, 72);
set_hitbox_value(49, 4, HG_HEIGHT, 60);
set_hitbox_value(49, 4, HG_SHAPE, 2);
set_hitbox_value(49, 4, HG_PRIORITY, 2);
set_hitbox_value(49, 4, HG_DAMAGE, 1);
set_hitbox_value(49, 4, HG_ANGLE, 310);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(49, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, -1);

//Copies
set_hitbox_value(49, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(49, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 5, HG_WINDOW, 4);
set_hitbox_value(49, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(49, 5, HG_LIFETIME, 2);
set_hitbox_value(49, 5, HG_HITBOX_X, 32);
set_hitbox_value(49, 5, HG_HITBOX_Y, -28);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(49, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 6, HG_WINDOW, 4);
set_hitbox_value(49, 6, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(49, 6, HG_LIFETIME, 2);
set_hitbox_value(49, 6, HG_HITBOX_X, 32);
set_hitbox_value(49, 6, HG_HITBOX_Y, -28);
set_hitbox_value(49, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 7, HG_PARENT_HITBOX, 4);
set_hitbox_value(49, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 7, HG_WINDOW, 4);
set_hitbox_value(49, 7, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(49, 7, HG_LIFETIME, 2);
set_hitbox_value(49, 7, HG_HITBOX_X, 32);
set_hitbox_value(49, 7, HG_HITBOX_Y, -28);
set_hitbox_value(49, 7, HG_HITBOX_GROUP, -1);

//Final Hitbox

set_hitbox_value(49, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(49, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 8, HG_WINDOW, 6);
set_hitbox_value(49, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 8, HG_LIFETIME, 15);
set_hitbox_value(49, 8, HG_HITBOX_X, 0);
set_hitbox_value(49, 8, HG_HITBOX_Y, -12);
set_hitbox_value(49, 8, HG_WIDTH, 120);
set_hitbox_value(49, 8, HG_HEIGHT, 60);
set_hitbox_value(49, 8, HG_SHAPE, 2);
set_hitbox_value(49, 8, HG_PRIORITY, 2);
set_hitbox_value(49, 8, HG_DAMAGE, 6);
set_hitbox_value(49, 8, HG_ANGLE, 80);
set_hitbox_value(49, 8, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(49, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(49, 8, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(49, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(49, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(49, 8, HG_HITBOX_GROUP, 1);