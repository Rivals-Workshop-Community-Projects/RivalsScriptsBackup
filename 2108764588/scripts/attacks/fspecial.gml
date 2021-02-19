/*set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.63);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 31);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 31);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 59);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 19);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);//*/

////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

/*set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//charging
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//cancel out
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//before hit
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//active
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//endlag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.63);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 31);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 31);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 59);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 19);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1);//*/

////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_test"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_test_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//charging
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//cancel out
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//before hit
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//active
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//endlag
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.63);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//before hit
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//active
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//endlag
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 18);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.63);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 3);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);//27);//*/


                
                
                
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 85);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 1); //strong_boost_hit);

set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 139-82);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 129-154);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);///strong_boost_hit);

/*set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 135);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 27);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_LOCKOUT, 5);//*/

////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////

set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fspecial_new_new"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
//set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("fspecial_new"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fspecial_new_new_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 4);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, -6);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 2);//*/

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, -6);
//set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 96);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 26);