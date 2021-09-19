set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 12);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//HIT
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_VSPEED, -8);

set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED, 20);

set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_num_hitboxes(AT_DSPECIAL_AIR, 7);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 270);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 250);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);