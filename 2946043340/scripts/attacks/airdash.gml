set_attack_value(AT_AIRDASH, AG_CATEGORY, 2);
set_attack_value(AT_AIRDASH, AG_SPRITE, sprite_get("airdash"));
set_attack_value(AT_AIRDASH, AG_NUM_WINDOWS, 3);
set_attack_value(AT_AIRDASH, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_AIRDASH, AG_HURTBOX_SPRITE, sprite_get("airdash_hurt"));

//Waiting a bit before dashing towards a direction
set_window_value(AT_AIRDASH, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_AIRDASH, 1, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_AIRDASH, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//Actual Airdash
set_window_value(AT_AIRDASH, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_AIRDASH, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//Endlag
set_window_value(AT_AIRDASH, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_AIRDASH, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_AIRDASH, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_AIRDASH, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_AIRDASH, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_AIRDASH, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_num_hitboxes(AT_AIRDASH, 1);

set_hitbox_value(AT_AIRDASH, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_AIRDASH, 1, HG_WINDOW, 2);
set_hitbox_value(AT_AIRDASH, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_AIRDASH, 1, HG_HITBOX_X, -7);
set_hitbox_value(AT_AIRDASH, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_AIRDASH, 1, HG_WIDTH, 95);
set_hitbox_value(AT_AIRDASH, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_AIRDASH, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_AIRDASH, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_AIRDASH, 1, HG_ANGLE, 60);
set_hitbox_value(AT_AIRDASH, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_AIRDASH, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_AIRDASH, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_AIRDASH, 1, HG_VISUAL_EFFECT, hfx_wind_small);