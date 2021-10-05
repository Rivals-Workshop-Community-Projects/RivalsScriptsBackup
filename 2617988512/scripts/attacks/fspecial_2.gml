set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 10);
set_attack_value(AT_FSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

//startup
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 19);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

//throw
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//recovery
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT,  80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 330);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));