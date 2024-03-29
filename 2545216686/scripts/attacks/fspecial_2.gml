set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_AIR_SPRITE, hurtbox_spr);
set_attack_value(AT_FSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

// note to self: if i change the length of windows 1 or 2 in here, change the hit lockout for the grab hitbox so the move can properly connect

//Initial Grab
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sfx_flight);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Fly Up
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, -4);
//set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, sfx_swipe1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 21);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Kick
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, -4.5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Endlag
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
//set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);