set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -3);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED, -3);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sfx_weaponswitch);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sfx_throw);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Upwards
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sfx_throw);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//Downwards
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sfx_throw);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

// Variation
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sfx_weaponswitch);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 10);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 24);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_SFX, sfx_throw);
//Upwards
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 10);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, -5);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_SFX, sfx_throw);
//Downwards
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 10);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 10);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, 5);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, sfx_throw);

set_num_hitboxes(AT_FSPECIAL, 3);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sfx_hit1);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sfx_hit1);
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sfx_hit1);
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
