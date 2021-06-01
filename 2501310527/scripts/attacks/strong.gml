set_attack_value(AT_STRONG, AG_CATEGORY, 2);
set_attack_value(AT_STRONG, AG_SPRITE, sprite_get("strong"));
set_attack_value(AT_STRONG, AG_NUM_WINDOWS, 12);
set_attack_value(AT_STRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_STRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_STRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_STRONG, AG_HURTBOX_SPRITE, sprite_get("strong_hurt"));

//Startup
set_window_value(AT_STRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_STRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_STRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_STRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_STRONG, 1, AG_WINDOW_GOTO, 12);

//Travelling forward
set_window_value(AT_STRONG, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_STRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_STRONG, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_STRONG, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_STRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_STRONG, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling forward endlag
set_window_value(AT_STRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_STRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_STRONG, 3, AG_WINDOW_HSPEED, 9);
set_window_value(AT_STRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_STRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_STRONG, 3, AG_WINDOW_GOTO, 13);

//Travelling diagonally up
set_window_value(AT_STRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_STRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_STRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_STRONG, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_STRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_STRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling diagonally up endlag
set_window_value(AT_STRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_STRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_STRONG, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_STRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_STRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_STRONG, 5, AG_WINDOW_GOTO, 13);

//Travelling up
set_window_value(AT_STRONG, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_STRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_STRONG, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_STRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_STRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 6, AG_WINDOW_VSPEED, -9);
set_window_value(AT_STRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling up endlag
set_window_value(AT_STRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_STRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 7, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_STRONG, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_STRONG, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 7, AG_WINDOW_VSPEED, -9);
set_window_value(AT_STRONG, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_STRONG, 7, AG_WINDOW_GOTO, 13);

//Travelling down
set_window_value(AT_STRONG, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_STRONG, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_STRONG, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_STRONG, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_STRONG, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 8, AG_WINDOW_VSPEED, 9);
set_window_value(AT_STRONG, 8, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling down endlag
set_window_value(AT_STRONG, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_STRONG, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 9, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_STRONG, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_STRONG, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 9, AG_WINDOW_VSPEED, 9);
set_window_value(AT_STRONG, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_STRONG, 9, AG_WINDOW_GOTO, 13);

//Travelling diagonally down
set_window_value(AT_STRONG, 10, AG_WINDOW_LENGTH, 9);
set_window_value(AT_STRONG, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_STRONG, 10, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_STRONG, 10, AG_WINDOW_HSPEED, 6);
set_window_value(AT_STRONG, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 10, AG_WINDOW_VSPEED, 6);
set_window_value(AT_STRONG, 10, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling diagonally down endlag
set_window_value(AT_STRONG, 11, AG_WINDOW_LENGTH, 4);
set_window_value(AT_STRONG, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 11, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_STRONG, 11, AG_WINDOW_HSPEED, 6);
set_window_value(AT_STRONG, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_STRONG, 11, AG_WINDOW_VSPEED, 6);
set_window_value(AT_STRONG, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_STRONG, 11, AG_WINDOW_GOTO, 13);

//Blaster animating (second window lol)
set_window_value(AT_STRONG, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_STRONG, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_STRONG, 12, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_STRONG, 12, AG_WINDOW_GOTO, 2);
set_window_value(AT_STRONG, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_STRONG, 12, AG_WINDOW_SFX, sound_get("blaster_smb3"));


set_num_hitboxes(AT_STRONG, 5);

//Hitbox forward
set_hitbox_value(AT_STRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_STRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_STRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_STRONG, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_STRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_STRONG, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_STRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_STRONG, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_STRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_STRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_STRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_STRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_STRONG, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_STRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_STRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_STRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_STRONG, 1, HG_HIT_SFX, sound_get("stronghit_smw"));
set_hitbox_value(AT_STRONG, 1, HG_HIT_LOCKOUT, 3);

//Hitbox diagonally up
set_hitbox_value(AT_STRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_STRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_STRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_STRONG, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_STRONG, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_STRONG, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_STRONG, 2, HG_WIDTH, 54);
set_hitbox_value(AT_STRONG, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_STRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_STRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_STRONG, 2, HG_ANGLE, 75);
set_hitbox_value(AT_STRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_STRONG, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_STRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_STRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_STRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_STRONG, 2, HG_HIT_SFX, sound_get("stronghit_smw"));
set_hitbox_value(AT_STRONG, 2, HG_HIT_LOCKOUT, 3);

//Hitbox up
set_hitbox_value(AT_STRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_STRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_STRONG, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_STRONG, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_STRONG, 3, HG_HITBOX_X, -7);
set_hitbox_value(AT_STRONG, 3, HG_HITBOX_Y, -45);
set_hitbox_value(AT_STRONG, 3, HG_WIDTH, 41);
set_hitbox_value(AT_STRONG, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_STRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_STRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_STRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_STRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_STRONG, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_STRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_STRONG, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_STRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_STRONG, 3, HG_HIT_SFX, sound_get("stronghit_smw"));
set_hitbox_value(AT_STRONG, 3, HG_HIT_LOCKOUT, 3);

//Hitbox down
set_hitbox_value(AT_STRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_STRONG, 4, HG_WINDOW, 8);
set_hitbox_value(AT_STRONG, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_STRONG, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_STRONG, 4, HG_HITBOX_X, -7);
set_hitbox_value(AT_STRONG, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_STRONG, 4, HG_WIDTH, 41);
set_hitbox_value(AT_STRONG, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_STRONG, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_STRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_STRONG, 4, HG_ANGLE, 270);
set_hitbox_value(AT_STRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_STRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_STRONG, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_STRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_STRONG, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_STRONG, 4, HG_HIT_SFX, sound_get("stronghit_smw"));
set_hitbox_value(AT_STRONG, 4, HG_HIT_LOCKOUT, 3);

//Hitbox diagonally down
set_hitbox_value(AT_STRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_STRONG, 5, HG_WINDOW, 10);
set_hitbox_value(AT_STRONG, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_STRONG, 5, HG_LIFETIME, 9);
set_hitbox_value(AT_STRONG, 5, HG_HITBOX_X, -1);
set_hitbox_value(AT_STRONG, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_STRONG, 5, HG_WIDTH, 55);
set_hitbox_value(AT_STRONG, 5, HG_HEIGHT, 52);
set_hitbox_value(AT_STRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_STRONG, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_STRONG, 5, HG_ANGLE, 300);
set_hitbox_value(AT_STRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_STRONG, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_STRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_STRONG, 5, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_STRONG, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_STRONG, 5, HG_HIT_SFX, sound_get("stronghit_smw"));
set_hitbox_value(AT_STRONG, 5, HG_HIT_LOCKOUT, 3);