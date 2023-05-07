set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
//set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1); //air version should fall slowly.


//startup.
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("tool_drawer_edited_by_mixkit"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

//startup w. gun 1
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);




//startup w. gun 2
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("metal_tool_falling_edited_by_mixkit"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 15);



//hold onto gun until hit or jump-cancelled.
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
//halt movement when this move's armor activates.
//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);

//cooldown
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_FSPECIAL, 5);


//main hit 1
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 106);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3); 
set_hitbox_value(AT_FSPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//main hit 2
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -99);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 41);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//meteor hit
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 58);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 82);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 23);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5); 
set_hitbox_value(AT_FSPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 275);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));



//bullet.
set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 19);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
//knockback
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 25);
//stun
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.5);
//effects
set_hitbox_value(AT_FSPECIAL, 4, HG_FORCE_FLINCH, 2); //can't flinch

//set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 304  ); //"basic large"
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 0);
//set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, -16);

set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("fspecial_bolt"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 ); //pierce opponents 
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 0 ); //only stun ralsei if he is holding the minigun
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0 );
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 193);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 1);

//backfire explosion
set_hitbox_value(AT_FSPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
//knockback
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_TECHABLE, 1); //untechable
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 80);
//stun
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_FSPECIAL, 5, HG_FORCE_FLINCH, 2); //can't flinch

//set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 304  ); //"basic large"
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_strong1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 0);

set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 0 ); 
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 193);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_LOCKOUT, 5);

