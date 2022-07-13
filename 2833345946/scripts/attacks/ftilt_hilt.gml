set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("ftilt_hilt"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("bar_swing_med1"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

//melee
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, vfx_small_sword);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 10);