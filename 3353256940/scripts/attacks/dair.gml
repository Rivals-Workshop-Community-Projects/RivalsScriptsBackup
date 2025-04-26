set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

//startup window
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_hazard_burst"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 11);

//active window
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//recovery window
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_DAIR,3);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 28);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 16);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270); //this is a spike angle, it sends straight down
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5); //this is normal spike knockback
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.45); //this is normal spike scaling for the base knockback, if you have more base, use less scaling
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10); 
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .9); 
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, splatter);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 361); 
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6); 
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6); 
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7); 
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .5); 
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, splsh);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 28);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 70); 
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6); 
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.2); 
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6); 
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .5); 
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
