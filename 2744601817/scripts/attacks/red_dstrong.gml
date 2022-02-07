set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

//startup window 1
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

//startup window 2
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, sound_get("rdair"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

//active window
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 8)
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);

//recovery window
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2,3);

//Left
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, -13*2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -6*2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 23*2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 16*2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 9); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1); 
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Right
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 12*2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -6*2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 21*2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 16*2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 9); 
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1); 
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


//Middle
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_X, -1*2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_Y, -18*2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WIDTH, 13*2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HEIGHT, 36*2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK, 8); 
set_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING, .8); 
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));