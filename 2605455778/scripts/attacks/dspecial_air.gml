set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0); //stall
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 10); //fall
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 10);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_ice_dspecial_form"));

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0); //land
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);