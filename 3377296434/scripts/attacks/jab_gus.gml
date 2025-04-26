set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("jab_gus"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("jab_gus_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_AIR, 1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);