set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .55);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("dive"));

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .01);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .03);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .45);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_land_med"));

set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .55);

set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_SFX, sound_get("flip"));
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .005);

set_num_hitboxes(AT_FSPECIAL_AIR, 3);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, .75);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITSTUN_MULTIPLIER, .75);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 999);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, .75);