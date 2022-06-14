//Down special air
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 6);

set_num_hitboxes(AT_DSPECIAL_AIR, 2);

//Startup of the attack
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0); 
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0); 
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Falling attack
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 1000);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 22);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);

//Attack
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12); 
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2); 
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Follow through
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 0); 
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8); 
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2); 
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5); 

//Idle
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 1); 
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 6); 

//Bounce up
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 10); 
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 6); 
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -10);

//Hitbox 1
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 10); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6); 
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1); 

//Hitbox 2
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1);
