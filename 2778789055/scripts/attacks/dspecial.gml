set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//startup1
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

//bounce
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -7); 
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_waterhit_weak"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 1);

//startup2
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 8);

//attack
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 1); 
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 9); 

//endlag
//set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, 1); 
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 4); 
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);