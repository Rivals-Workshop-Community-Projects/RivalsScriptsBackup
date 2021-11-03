set_attack_value(AT_FSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 15);

//sweetspot
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 22);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//rest of dash
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 22);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

//endlag
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 8.5);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -13);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 51);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 130);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("crashinghit2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 35);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 36); //44
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);