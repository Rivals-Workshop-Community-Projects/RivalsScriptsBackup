set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1); //epinel should fall very slowly during this move.


//startup.
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_waveland_kra"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

//first armor frame.
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//halt movement when this move's armor activates.
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

//chargable armor frames.
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 56);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

//brief attack startup.
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));

//nyoom.
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_INVINCIBILITY, 2);//projectile-invincible while moving.
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("release"));

//main hit.
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);
//the final windows have extreme friction so that the move slows to a stop.
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);


//variable cooldown.
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 1); //varies
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

//cooldown 1.
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//cooldown 2.
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

//cooldown 3.
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//the final windows have extreme friction so that the move slows to a stop.
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION,  10);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 10);

set_num_hitboxes(AT_FSPECIAL, 3);

//normal hit.
set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
//knockback
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 40);
//stun
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
//effects


set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304  ); //"basic large"
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 2);

//sweetspot. 
set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5); //'inertia' sweetspot
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
//knockback
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
//stun
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.25); //!!
//effects
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304  ); //"basic sweetspot"
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 3);





//sourspot. 
set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -15); //adjusts
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 30); //adjusts
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 16);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1); //lowest priority
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
//knockback
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
//stun
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.1);
//effects
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 0  ); //default
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1")); 
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, -1); //no camera shake
set_hitbox_value(AT_FSPECIAL, 3, HG_FORCE_FLINCH, 1); //forces flinch on ground
set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 12); //crouching armors through this hitbox
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1); //can't break projectiles
set_hitbox_value(AT_FSPECIAL, 3, HG_THROWS_ROCK, 2); //ignores rock


