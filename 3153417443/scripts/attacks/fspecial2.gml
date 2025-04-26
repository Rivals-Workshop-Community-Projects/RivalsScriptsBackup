set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("throws"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("throws"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("throws_hurt"));

//UP
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//BACK
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 48);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//DOWN
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 23);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//FORWARD
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 36);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_num_hitboxes(AT_FSPECIAL_2, 4);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 29);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, -13);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE_FLIPPER, 6);


