set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//charge
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 45);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("fstrongcharge"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 23);

//release
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("fstrongrelease"));

//active/traveling 
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 7);
//set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);

//positioning
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//endlag 1
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_GOTO, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//sucess
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_VSPEED_TYPE, 1);

//endlag 2
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_GOTO, 12);

//endlag 2
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 0);

set_num_hitboxes(AT_FSTRONG, 5);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 82);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 264);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));

set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 170);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 282);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));

set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -13);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("fstronghit"));
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 5, HG_EXTRA_HITPAUSE, 16);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 3);