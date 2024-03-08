set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);

//Loop Charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 5);

//Punch Startup
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("nspecial"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 7);

//Active
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);

//Endlag
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);

//Endlag
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 18);

set_num_hitboxes(AT_NSPECIAL, 5);

//Level 0 Charge
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 114);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, rock_s);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Level 1 Charge
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 41);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 114);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, rock_s);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Level 2 Charge
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 41);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 114);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, rock_s);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Level 3 Charge
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 41);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 114);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, rock_m);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Level 4 Charge
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 41);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 114);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, rock_l);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
