set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));



set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);//sfx_charge_blade_swing
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -0.25);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 0.4);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FAIR, 4, AG_WINDOW_VSPEED, -0.5);

set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 0);
//set_window_value(AT_FAIR, 5, AG_WINDOW_VSPEED, -0.5);

//set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
//set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 0);


set_num_hitboxes(AT_FAIR, 6);


//first hitbox
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2); //high priority
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


//sourspot
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 61);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1); 
set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.3);




//early meteor hitbox
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 11);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -7);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 28);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 3); //highest priority
set_hitbox_value(AT_FAIR, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 3, HG_SDI_MULTIPLIER, 1);


set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.7);





//late meteor hitbox 1
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 20);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, 10);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 14);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 4, HG_SDI_MULTIPLIER, 1);


set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.7);

//late meteor hitbox 2
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, -12);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -7);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 5, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.7);



//high priority frame 1 hitbox
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 23);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 4); //highest priority
set_hitbox_value(AT_FAIR, 6, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 6, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));




/*
//first hitbox
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 92);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2); //high priority
set_hitbox_value(AT_FAIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


//sourspot
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 66);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1); 
set_hitbox_value(AT_FAIR, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.25);




//early meteor hitbox
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 30);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 3); //highest priority
set_hitbox_value(AT_FAIR, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 3, HG_SDI_MULTIPLIER, 1);


set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0.5);





//late meteor hitbox 1
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, 10);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 14);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 4, HG_SDI_MULTIPLIER, 1);


set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.5);

//late meteor hitbox 2
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, -12);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -7);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 5, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 11);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 275);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.5);



//high priority frame 1 hitbox
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 9);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -21);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 45);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 4); //highest priority
set_hitbox_value(AT_FAIR, 6, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 6, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FAIR, 6, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
*/
