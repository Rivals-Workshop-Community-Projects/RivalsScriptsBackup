//extra_3.gml

//landing attack after using uspecial.




set_attack_value(AT_EXTRA_3, AG_CATEGORY, 0);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("landinglag2"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1); 
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.75); 

//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1); //play sound.
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("releaseland"));//asset_get("sfx_kragg_rock_shatter"));

//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1); 


set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
//priority/grouping
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 3);
//shape
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 60);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0); //circle
//knockback
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.5); 
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 6); //horizontally sends away from the enemy
//stun
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_HITPAUSE, 1);
//effects
//set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_kragg_rock_shatter"));
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 192 );
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_CAMERA_SHAKE, 2);