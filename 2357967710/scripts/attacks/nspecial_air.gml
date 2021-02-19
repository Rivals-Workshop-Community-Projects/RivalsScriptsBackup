set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial_2"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_2_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 25);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -6);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_NSPECIAL_AIR,1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 120);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, -60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));