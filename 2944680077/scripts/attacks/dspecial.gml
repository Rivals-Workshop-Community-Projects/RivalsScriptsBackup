set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 200);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1.5);

//1startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1); 
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

//1handstand fall
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 

//1handstand land
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_land_light"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1); 

//1handstand idle
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

//1handstand jumpstart
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005);

//1handstand jump
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_LENGTH, 900);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 

//1handstand jumpland
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 

//1handstand walk
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 9);

//2flip startup
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1); 
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

//2flip fall
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 9000);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 

//2flip land
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 35);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_SFX_FRAME, 1); 

//3flip start
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 40);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX_FRAME, 1); 
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

//3flip spin
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 

//3flip fall
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 

//3flipland
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 57);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8); 
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX, asset_get("sfx_land_med2"));
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_SFX_FRAME, 1); 

//3flip pose
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 62);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8); 

//flip cancel
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, -7);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

//secret taunt 
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_ANIM_FRAME_START, 64);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_SFX, sound_get("nsmbwii_clapping"));
set_window_value(AT_DSPECIAL, 18, AG_WINDOW_SFX_FRAME, 1); 

set_window_value(AT_DSPECIAL, 19, AG_WINDOW_LENGTH, 45);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_ANIM_FRAME_START, 67);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 19, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

set_window_value(AT_DSPECIAL, 20, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_ANIM_FRAMES, -3);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_ANIM_FRAME_START, 66);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.005); 
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_CUSTOM_GRAVITY, 1.5); 
set_window_value(AT_DSPECIAL, 20, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5); 

set_num_hitboxes(AT_DSPECIAL, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, bounce_fx);


set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 999);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 16);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, bounce_fx);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 11);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 56);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 304);