AT_SUPERDASH = AT_FTHROW;
rune_superdash_used = false;
rune_superdash_target = -1;

set_attack_value(AT_SUPERDASH, AG_CATEGORY, 2);
set_attack_value(AT_SUPERDASH, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_SUPERDASH, AG_NUM_WINDOWS, 4);
set_attack_value(AT_SUPERDASH, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_SUPERDASH, AG_OFF_LEDGE, 1);
set_attack_value(AT_SUPERDASH, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_SUPERDASH, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_SUPERDASH, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_SUPERDASH, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_SUPERDASH, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_SUPERDASH, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_SUPERDASH, 1, AG_WINDOW_SFX, asset_get("sfx_ori_dash_attack_perform"));
set_window_value(AT_SUPERDASH, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_SUPERDASH, 2, AG_WINDOW_TYPE, 69); //This is the window where you dash to the gem
set_window_value(AT_SUPERDASH, 2, AG_WINDOW_LENGTH, 30); //In case they can't reach it.

set_window_value(AT_SUPERDASH, 2, AG_WINDOW_HSPEED, 18); //The speed they dash to the gem at, both h and v. Was 12 previously.
set_window_value(AT_SUPERDASH, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_SUPERDASH, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_SUPERDASH, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_armor"));
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_SUPERDASH, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_SUPERDASH, 3, AG_WINDOW_VSPEED, -5);

set_window_value(AT_SUPERDASH, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_SUPERDASH, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_SUPERDASH, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SUPERDASH, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_SUPERDASH, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_SUPERDASH, 4, AG_WINDOW_VSPEED, -12);
set_window_value(AT_SUPERDASH, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_SUPERDASH, 4, AG_WINDOW_HSPEED_TYPE, 2);

//This window only plays when the attack is cancelled. if you add more windows, change this one to be one above AG_NUM_WINDOWS.
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_SUPERDASH, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_VSPEED, -7);
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_SUPERDASH, 5, AG_WINDOW_HSPEED_TYPE, 1);


set_num_hitboxes(AT_SUPERDASH, 1);


set_hitbox_value(AT_SUPERDASH, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_SUPERDASH, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_SUPERDASH, 1, HG_WINDOW, 4);

set_hitbox_value(AT_SUPERDASH, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_SUPERDASH, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_SUPERDASH, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_SUPERDASH, 1, HG_WIDTH, 80);
set_hitbox_value(AT_SUPERDASH, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_SUPERDASH, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_SUPERDASH, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_SUPERDASH, 1, HG_ANGLE, 80);
set_hitbox_value(AT_SUPERDASH, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_SUPERDASH, 1, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_SUPERDASH, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_SUPERDASH, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_SUPERDASH, 1, HG_BASE_KNOCKBACK, 11);


set_hitbox_value(AT_SUPERDASH, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_SUPERDASH, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_SUPERDASH, 1, HG_HITBOX_ENABLE_COMMANDINPUT, 1);
