set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt")); 
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);


set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4 );

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 13 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GRAVITY, 7 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_waveland_wra") );


set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 0 );
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 5 );
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4 );
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2 );
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 10 );


set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 20 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 0 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 7 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get( "sfx_dashroll" ));
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0 );

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 0 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 10 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1 );
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, sound_get( "sfx_dashrollfinish" ));
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 0 );
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 5 );
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 13 );


set_num_hitboxes(AT_DATTACK,4);

//Initial Push

set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 3); 

//Rolling

set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 51);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 25);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1); 

//Pose Striking
set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 71);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 43);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1); 


//Late Push
set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 5);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 57);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 35);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 3); 