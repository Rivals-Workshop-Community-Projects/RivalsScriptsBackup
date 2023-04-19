set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_ori_sein_fstrong"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);
//set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 5);

//dive
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_CUSTOM_GRAVITY, .9);


//hit
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_EXTRA_1, 3, AG_WINDOW_CUSTOM_GRAVITY, .7);
//bounce
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED, 2);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 22);
//land
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 16);

set_num_hitboxes(AT_EXTRA_1, 2);

/*
set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 64);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
*/

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_EXTRA_1, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 68);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));