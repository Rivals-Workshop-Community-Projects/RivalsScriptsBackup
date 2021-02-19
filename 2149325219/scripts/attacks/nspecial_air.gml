set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_AIR,0);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 22);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);