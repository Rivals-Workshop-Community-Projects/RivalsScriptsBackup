set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 419);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("olym_focusattack"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 1.2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

//charge
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 419);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 38);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 1.2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//unbreaking palm
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 419);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16); 
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL, 3);

//lvl 1
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 59);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 0); //no extra hitpause, no olympia stun
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));

//lvl 2
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 59);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 8); //has extra hitpause instead of olympia stun ?
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));

//lvl 3 (maximum)
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 59);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 990); //effect 990 causes stun effect in hit_player.gml
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ice_dspecial_ground"));