set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));


set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME,7);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 4);

// multi
set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -96);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 77);;
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 110);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 302 );
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9 );
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 2)
set_hitbox_value(AT_UTILT, 1, HG_FORCE_FLINCH, 0)



// finisher
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -102);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 63);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 305 );
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_UTILT, 2, HG_DRIFT_MULTIPLIER, 1);

// launcher
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -46);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 82);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 120);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 0);
//set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UTILT, 3, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, 0.5); 
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 4);

// launcher
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 15);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -84);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 63);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 63);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 150);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 0);
//set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 3);
set_hitbox_value(AT_UTILT, 4, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_UTILT, 4, HG_HITSTUN_MULTIPLIER, 0.5); 
set_hitbox_value(AT_UTILT, 4, HG_ANGLE_FLIPPER, 9);



