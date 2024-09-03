set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//stab
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);

//rise up
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 8);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);

//flip
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);

//move down
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 14);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

//loop
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 10000);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 14);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

//slam
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 0);

//pratfall
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 2.3);
//set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.2);

set_num_hitboxes(AT_USPECIAL, 7);

//stab
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 100);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

//stab tipper
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 55);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 100);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_EFFECT, 99);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 21);

//rise
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_USPECIAL, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 2);

//rise tipper
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_X, 32);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 6, HG_EFFECT, 99);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 21);

//descend
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 3);

//descend tipper
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 50);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 7, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_EFFECT, 99);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 21);

//slam
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 4);