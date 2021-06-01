set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 12);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

//Startup
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling forward
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Travelling forward ending
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_GOTO, 14);

//Travelling diagonally upward
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//Travelling diagonally upward endlag
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_VSPEED, -4);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_GOTO, 14);

//Travelling up
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 1);

//Travelling up endlag
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_VSPEED, -6);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_GOTO, 14);

//Travelling down
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 8, AG_WINDOW_HSPEED_TYPE, 1);

//Travelling down endlag
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_VSPEED, 6);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 9, AG_WINDOW_GOTO, 14);

//Travelling diagonally down
set_window_value(AT_NSPECIAL_AIR, 10, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_AIR, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 10, AG_WINDOW_ANIM_FRAME_START, 16);

//Travelling diagonally down endlag
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_VSPEED, 4);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 11, AG_WINDOW_GOTO, 14);

//Endlag and going to th blaster
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 12, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(AT_NSPECIAL_AIR, 10);

//Hitbox Forward
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("kamikazehit_smw"));

//Hitbox Diagonally Up
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("kamikazehit_smw"));

//Hitbox Diagonally Up
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_WIDTH, 54);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 3, HG_HIT_LOCKOUT, 3);

//Hitbox Diagonally Up
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_WIDTH, 54);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_ANGLE, 75);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 4, HG_HIT_LOCKOUT, 3);

//Hitbox Up
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_X, -7);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_WIDTH, 41);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 5, HG_HIT_LOCKOUT, 3);

//Hitbox Up
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_X, -7);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_WIDTH, 41);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 6, HG_HIT_LOCKOUT, 3);

//Hitbox Down
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_X, -7);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_WIDTH, 41);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 7, HG_HIT_LOCKOUT, 3);

//Hitbox Down
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_X, -7);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITBOX_Y, -29);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_WIDTH, 41);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 8, HG_HIT_LOCKOUT, 3);

//Hitbox Diagonally Down
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_X, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HEIGHT, 52);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_ANGLE, 300);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 9, HG_HIT_LOCKOUT, 3);

//Hitbox Diagonally Down
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_WINDOW, 11);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_X, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_WIDTH, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HEIGHT, 52);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_ANGLE, 300);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HIT_SFX, sound_get("kamikazehit_smw"));
set_hitbox_value(AT_NSPECIAL_AIR, 10, HG_HIT_LOCKOUT, 3);