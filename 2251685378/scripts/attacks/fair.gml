//Got the basics of the attack
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1); 
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt")); 
set_attack_value(AT_FAIR, AG_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4); 

set_num_hitboxes(AT_FAIR, 2);

//Startup of the attack
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 0); 
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8); 
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2); 
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0); 

//First swing
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 7); 
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2); 
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Second swing
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 0); 
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 10); 
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);

//Recovery
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 0); 
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2); 
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5); 

//Hitbox 1 values
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1); 
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2); 
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2); 
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 45); 
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -45); 
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4); 
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 90); 
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1); 
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1.5); 
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, fair1_vfx);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -60);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -60);

//Hitbox 2 values
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1); 
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0); 
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3); 
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 7); 
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -45); 
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 85);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 75); 
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 5); 
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.45); 
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40); 
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, fair2_vfx);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -60);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -60);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1);


