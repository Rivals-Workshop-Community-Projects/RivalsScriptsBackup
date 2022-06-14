//Neutral Air
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);

set_num_hitboxes(AT_NAIR, 4);

//Startup of the attack
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 0); 
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5); 
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2); 
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0); 

//Attack
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 0); 
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 18); 
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5); 
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2); 
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Follow through
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 0); 
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10); 
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6); 

//Hitbox 1
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0); 
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2); 
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3); 
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -5); 
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 90); 
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 90); 
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3); 
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9); 
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1); 
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

//Hitbox 2
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3); 
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -5); 
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -55);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

//Hitbox 3
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0); 
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 15); 
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3); 
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -5); 
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -55); 
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 110); 
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4); 
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 8); 
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5)
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45); 
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1); 
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

