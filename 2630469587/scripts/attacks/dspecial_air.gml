set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecialair"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecialair_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("landinglag"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("crouch_hurtbox"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 24);

//startup
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 4);

//active
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("grabwhiff"));

//recovery
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
//recovery2
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

//grab hitbox
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, get_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("grab"));