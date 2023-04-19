set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_dash"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);

//waiting to travel
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//travelling
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

//endlag
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_GOTO, 10);

//upwards hit
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_VSPEED, 0);

//invisible dash
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX, sound_get("vanish"));

//downwards hit (DAir)
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED, 0);

//invisible dash
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_SFX, sound_get("vanish"));

//jab push
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 9, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_FSPECIAL_2, 4);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 41);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 9);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 280);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_TECHABLE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_X, 51);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 105);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_GROUP, -1);