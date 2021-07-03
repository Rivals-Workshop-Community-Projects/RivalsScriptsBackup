//Finishing Yarn Move
set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

//Getting y ball and spinning
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);


//Dash start
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_grenade_launch"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, 10); //Modified from attack_update
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Dash (active + i-frames)
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED, 30); //Modified from attack_update
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_bird_upspecial"));

//After dash (whiff)
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HITPAUSE_FRAME, 6);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//End lag
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 36); //modified from attack_update and hit_player
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CANCEL_FRAME, 1);
//set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//Brief pause (on hit)
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);

//Looping wrap (if attack hits)
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_LENGTH, 45);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 2);

//Finishing dash
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HSPEED, 24);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 2);

//Ending dash
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 2);

//Ending pause
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 10, AG_WINDOW_ANIM_FRAMES, 2);

//Return to idle
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 11, AG_WINDOW_ANIM_FRAMES, 2);


set_num_hitboxes(AT_DSPECIAL_2, 6);
//Dash hitbox
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 1);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 16);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 30);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_FORCE_FLINCH, 3 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Looping yarn wrap
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL_22 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 1);
//set_hitbox_value(AT_DSPECIAL_22 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DSPECIAL_22 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 30);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_FORCE_FLINCH, 3 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, 1 );
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Semi finisher hitbox
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL_22 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_KNOCKBACK, 1);
//set_hitbox_value(AT_DSPECIAL_22 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_DSPECIAL_22 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTRA_HITPAUSE, 30);
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_TECHABLE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_FORCE_FLINCH, 3 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL_2, 3, HG_EXTRA_CAMERA_SHAKE, 1 );
//set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Finisher hitbox
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL_2 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_TECHABLE, 1 );
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_FORCE_FLINCH, 3 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_may_whip1"));


//Placeholder finisher hitbox
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL_2 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_WIDTH, 84);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_X, -50);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_SHAPE, 2 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_KNOCKBACK, 12); //modified from attack update
set_hitbox_value(AT_DSPECIAL_2, 5, HG_KNOCKBACK_SCALING, 3); //modified from attack update. Ranges from 1 - 2
set_hitbox_value(AT_DSPECIAL_2, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTRA_HITPAUSE, 20); //modified from attack update and hit_player. Ranges from 10 - 40
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_DRIFT_MULTIPLIER, 1.5);
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_TECHABLE, 1 );
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_FORCE_FLINCH, 3 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_VISUAL_EFFECT, 1 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_may_whip1")); //sfx_burnconsume
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_HIT_LOCKOUT, 80 );

//Hitbox spawned from hit_player when landing charged dspecial
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_DSPECIAL_2, 6, HG_WINDOW, 4);
//set_hitbox_value(AT_DSPECIAL_2 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_WIDTH, 2);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HEIGHT, 2);
//set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_X, -50);
//set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_SHAPE, 0 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_KNOCKBACK_SCALING, 3); //modified from attack update. Ranges from 1 - 3
set_hitbox_value(AT_DSPECIAL_2, 6, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_DRIFT_MULTIPLIER, 1.5);
//set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTRA_HITPAUSE, 30);
//set_hitbox_value(AT_DSPECIAL_2, 5, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_TECHABLE, 1 );
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_FORCE_FLINCH, 3 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_VISUAL_EFFECT, 301 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_EXTRA_CAMERA_SHAKE, 1 );
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_SFX, asset_get("sfx_may_whip1")); //sfx_burnconsume
set_hitbox_value(AT_DSPECIAL_2, 6, HG_HIT_LOCKOUT, 60 );
