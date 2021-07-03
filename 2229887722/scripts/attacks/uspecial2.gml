set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//Pre Attack Window
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_aim"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);

//Rising Attack Window
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -15); //-20 for Super Launcher Claw. Becomes -20 vsp on first hitbox hit.
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));

//Finisher Attack Window 1
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);

//Finisher Attack Window 2 (Special Held Down)
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);

//Ending Window
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.04);



//==========================
//Hitboxes
//========================
set_num_hitboxes(AT_USPECIAL_2, 17);

//Initial Attack Hitbox
//======
set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 112);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL_2, 1, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 197 );
//set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));


//Rising Attack, Multi-Hit Hitboxes
//====
set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 82);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 112);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 0.25);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 0.25);
//set_hitbox_value(AT_USPECIAL_2, 2, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL_2, 2, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_TECHABLE, 1 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, -1 );
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, -1 );
//=====


//Finisher Attack Hitboxes
//======

//Finisher 1
set_hitbox_value(AT_USPECIAL_2, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 6, HG_SHAPE, 0 );
set_hitbox_value(AT_USPECIAL_2, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL_2, 6, HG_ANGLE, 90);
//set_hitbox_value(AT_USPECIAL_2, 6, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL_2, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USPECIAL_2, 6, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_USPECIAL_2, 6, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_USPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


//Finisher 2 (Special Held Down)
set_hitbox_value(AT_USPECIAL_2, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_GROUP, -1 );
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_2, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 7, HG_SHAPE, 0 );
set_hitbox_value(AT_USPECIAL_2, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 7, HG_ANGLE, 90);
//set_hitbox_value(AT_USPECIAL_2, 7, HG_EFFECT, 9);
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 7, HG_KNOCKBACK_SCALING, 1); //1.2 for super launcher claw
set_hitbox_value(AT_USPECIAL_2, 7, HG_BASE_HITPAUSE, 25);
//set_hitbox_value(AT_USPECIAL_2, 7, HG_EXTRA_HITPAUSE, 45);
//set_hitbox_value(AT_USPECIAL_2, 7, HG_HITPAUSE_SCALING, 36);
set_hitbox_value(AT_USPECIAL_2, 7, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_USPECIAL_2, 7, HG_VISUAL_EFFECT, 127 );
set_hitbox_value(AT_USPECIAL_2, 7, HG_EXTRA_CAMERA_SHAKE, 0 );
set_hitbox_value(AT_USPECIAL_2, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//=======

//Extra multi hit hitboxes
set_hitbox_value(AT_USPECIAL_2, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL_2, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 8, HG_HITBOX_GROUP, -1 );

//Extra multi hit hitboxes
set_hitbox_value(AT_USPECIAL_2, 9, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 9, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USPECIAL_2, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 9, HG_HITBOX_GROUP, -1 );

//Extra multi hit hitboxes
set_hitbox_value(AT_USPECIAL_2, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 10, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL_2, 10, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 10, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 11, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 11, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 11, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USPECIAL_2, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 11, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 12, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 12, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 12, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USPECIAL_2, 12, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 12, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 12, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 12, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 13, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 13, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 13, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 13, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_USPECIAL_2, 13, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 13, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 13, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 13, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 14, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 14, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 14, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 14, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_2, 14, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 14, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 14, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 14, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 15, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 15, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 15, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 15, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_USPECIAL_2, 15, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 15, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 15, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 15, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 16, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 16, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 16, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 16, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_USPECIAL_2, 16, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 16, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 16, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 16, HG_HITBOX_GROUP, -1 );

set_hitbox_value(AT_USPECIAL_2, 17, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 17, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 17, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 17, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_2, 17, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 17, HG_HITBOX_X, 26);
set_hitbox_value(AT_USPECIAL_2, 17, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL_2, 17, HG_HITBOX_GROUP, -1 );
