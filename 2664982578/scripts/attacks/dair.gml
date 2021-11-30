set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("nsmbwiiGroundPound1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 5);

//attack
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2); 
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 13); 

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag (no hit)
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);

//bounce
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_DAIR, 6, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_DAIR, 6, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_SFX, sound_get("nsmbwiiGroundPound3"));

set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_SFX, sound_get("nsmbwiiGroundPound3"));

set_num_hitboxes(AT_DAIR,3);

set_hitbox_value(AT_DAIR, 1, HG_MUNO_HITBOX_NAME, "Early Spike Hitbox");
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8); 
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("nsmbwiiGroundPound2"));

set_hitbox_value(AT_DAIR, 2, HG_MUNO_HITBOX_NAME, "Bounce Up Hitbox");
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5); 
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 100);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 10); 
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("nsmbwiiGroundPound2"));
set_hitbox_value(AT_DAIR, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_DAIR, 2, HG_SDI_MULTIPLIER, 0.1);

set_hitbox_value(AT_DAIR, 3, HG_MUNO_HITBOX_NAME, "Landing Hitbox");
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 8);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7); 
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2); 
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 9); 
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("nsmbwiiGroundPound2"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 6);