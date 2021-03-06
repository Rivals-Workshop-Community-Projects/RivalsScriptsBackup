set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1); //epinel should fall very slowly during this move.


//startup.
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("gravel_sweep_freesounds_jorickhoofd_169555_edited_CCBY30"));

//first armor frame.
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_waveland_kra"));
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//halt movement when this move's armor activates.
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//chargable armor frames.
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//brief attack startup.
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));

//nyoom.
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_INVINCIBILITY, 2);//projectile-invincible while moving.
//main hit.
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);
//the final windows have extreme friction so that the move slows to a stop.
//set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);


//variable cooldown.
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 1); //varies
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 8);

//cooldown.
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 31);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 5); // 6
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.01);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_HSPEED, -1);
set_window_value(AT_FSPECIAL_AIR, 8, AG_WINDOW_HSPEED_TYPE, 2);







set_num_hitboxes(AT_FSPECIAL_AIR, 11);

//normal hit.
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 51);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 51);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//knockback
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.7); 
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 361);
//stun
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_CAMERA_SHAKE, 2);


//high-priority sour-spot, at the tip of the claw. The sweetspot only hits if it is aimed perfectly deep into the opponent.
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, 14);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//knockback
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.7); 
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 361);
//stun
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, 1);
//effects
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_CAMERA_SHAKE, 2);


//sweetspot, at the base of the arm. diagonal meteor.
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 11);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 5); //'inertia' sweetspot
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//knockback
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 315); //almost hell-angle
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_TECHABLE, 2); //goes through platforms
//stun
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, 1.3); //!!
//effects
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_EXTRA_CAMERA_SHAKE, 3);





//sourspot 1.
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 0); //adjusts
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, 0); //adjusts
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 16); 
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//knockback
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITSTUN_MULTIPLIER, 0.1);
//effects
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_EXTRA_CAMERA_SHAKE, -1); //no camera shake
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_FORCE_FLINCH, 1); //forces flinch on ground
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_EFFECT, 12); //crouching armors through this hitbox
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_IGNORES_PROJECTILES, 1); //can't break projectiles
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_THROWS_ROCK, 2); //ignores rock


//sourspot 2.
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 1);


//sourspot 3.
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 1);

//sourspot 4.
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 7, HG_LIFETIME, 1);

//sourspot 5.
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_LIFETIME, 1);

//sourspot 6.
set_hitbox_value(AT_FSPECIAL_AIR, 9, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 9, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 9, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 9, HG_LIFETIME, 1);

//sourspot 7.
set_hitbox_value(AT_FSPECIAL_AIR, 10, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 10, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 10, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 10, HG_LIFETIME, 1);


//sourspot final.
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_WINDOW_CREATION_FRAME, 0); //delay 1 frame
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITBOX_X, 0); //adjusts
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITBOX_Y, -20); 
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_WIDTH, 16); //adjusts
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HEIGHT, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_VISUAL_EFFECT_Y_OFFSET, -16);
//knockback
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HITSTUN_MULTIPLIER, 0.1);
//effects
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_EXTRA_CAMERA_SHAKE, -1); //no camera shake
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_FORCE_FLINCH, 1); //forces flinch on ground
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_EFFECT, 12); //crouching armors through this hitbox
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_IGNORES_PROJECTILES, 1); //can't break projectiles
set_hitbox_value(AT_FSPECIAL_AIR, 11, HG_THROWS_ROCK, 2); //ignores rock

