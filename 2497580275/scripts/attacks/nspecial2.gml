set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL_2, 0);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .05);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);