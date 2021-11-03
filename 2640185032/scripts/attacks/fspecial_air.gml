set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

//startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 15);

//sweetspot
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 18);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

//rest of dash
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 18);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

//endlag
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//landing lag
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 49);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 285);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("crashinghit2"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 41);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 75);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);