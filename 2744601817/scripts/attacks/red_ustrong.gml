set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("rustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("rustrong_hurt"));
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

//startup window 1
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

//startup window 2
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("rutilt"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED, 4);

//active window
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 8)
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//recovery window
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2,2);

//Normal
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 8*2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -29*2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 31*2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 41*2);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 9); 
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1); 
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG_2, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, fx_rhit);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
