//Dash attack
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);

set_num_hitboxes(AT_DATTACK, 1);

//Startup of the attack
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 0); 
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3); 
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAME_START, 0); 
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

//Attack
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 0); 
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1); 
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3); 
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

//Follow through
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 0); 
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3); 
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5); 

//Hitbox 1
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0); 
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2); 
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0); 
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 70); 
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 65); 
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 55); 
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6); 
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.65); 
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60); 
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1); 
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1); 
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 9);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, dattack_vfx);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, -70);