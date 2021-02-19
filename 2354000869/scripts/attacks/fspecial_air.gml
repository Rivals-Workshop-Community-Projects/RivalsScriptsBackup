set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1); //Startup
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1); //Skewer
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_num_hitboxes(AT_FSPECIAL_AIR, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1); //Stun
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 53);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_ice_back_air"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);