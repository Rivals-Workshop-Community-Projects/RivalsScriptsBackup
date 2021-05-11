set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("SWB1"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -17);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("ARWave_v2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -11);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("SWB2"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 11);

//fall
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

//land
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);//14
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sound_get("dash"));

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 19);//16
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);

//horizontal "cutter dash"
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);//8
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 11);//9
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, sound_get("SWFS5"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED, 1);//7



set_num_hitboxes(AT_USPECIAL, 7); 

//shockwave
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
//set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 32);//41//12

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -12);

set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_slash"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("uspecial_slash_hb"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 0);

set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);//24

set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 194);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ice_back_air"));

set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);

//start, bottom
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);//1
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 64);//-2
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 88);//62
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);//1
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);//1
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);//60
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 17);//4.5
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);//0
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);//1.8
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.35);//.6
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);//2
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("ARWave_v2"));

//start, top
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);//1
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 64);//-2
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 88);//62
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 21);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);//1
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5);//1
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);//60
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 10);//4.5
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);//0
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);//1.8
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.35);//.6
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);//2
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("ARWave_v2"));

//fall
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);//1
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 62);//-2
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 80);//62
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 39);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);//1
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 2);//1
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, -88);//60
//set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 10);//60
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 3);//4.5
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0);//0
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 3.8);//1.8
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.35);//.6
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.8);//1.2
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);//2
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("ARSlash"));

//land
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 5);//1
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 0);//-2
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -26);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 80);//62
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);//1
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 5);//1
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 60);//60
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);//4.5
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.6);//0
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);//1.8
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);//.6
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);//2
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ice_back_air"));

//dash early
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 7);//1
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 7);//-2
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 62);//62
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 63);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);//1
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 8);//1
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 361);//60
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 7);//4.5
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5);//0
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 8);//1.8
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 0.35);//.6
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 1);//2
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ice_back_air"));

//dash late
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 7);//1
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 4);//1
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 19);//-2
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -5);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 40);//62
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 61);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 1);//1
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 5);//1
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 361);//60
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 6);//4.5
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0.1);//0
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 6);//1.8
set_hitbox_value(AT_USPECIAL, 7, HG_HITPAUSE_SCALING, 0.35);//.6
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 1);//2
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_medium2"));









