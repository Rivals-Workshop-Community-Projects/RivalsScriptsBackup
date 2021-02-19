set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 14);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("falcon kick"));

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 4, AG_LANDING_LAG, 13);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 5, AG_LANDING_LAG, 13);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_VSPEED, 14);

set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 21);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 110);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 49);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));