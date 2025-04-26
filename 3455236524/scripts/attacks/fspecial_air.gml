set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//Startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("fspecial_boost"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 2);

//Blast Off!
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -8.5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

//Endlag
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 0);


set_num_hitboxes(AT_FSPECIAL_AIR, 1);


set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);