//Back air
set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);

set_num_hitboxes(AT_BAIR, 2);

//Startup of the attack
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 0); 
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 7); 
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3); 
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0); 

//Attack
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 8); 
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3); 
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//First Follow through lol
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 5); 
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4); 

//Follow through
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 8); 
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 3); 
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5); 

//Hitbox 1
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1); 
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2); 
set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 7); 
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -20); 
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.8); 
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 120); 
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1); 
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 9);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, bair_vfx);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -55);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 1); 
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);

//Hitbox 2
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1); 
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0); 
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2); 
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 8); 
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -3); 
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 15);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 9); 
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5); 
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.3); 
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 270); 
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1); 
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 2); 
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 7);
set_hitbox_value(AT_BAIR, 2, HG_GROUNDEDNESS, 2); 
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 2); 
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 5);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, bair_vfx);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -45);