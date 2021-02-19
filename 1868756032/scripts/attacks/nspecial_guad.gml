set_attack_value(AT_NSPECIAL_GUAD, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_GUAD, AG_SPRITE, sprite_get("AT_NSPECIAL_INHALE"));
set_attack_value(AT_NSPECIAL_GUAD, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_GUAD, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_GUAD, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_GUAD, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_INHALE"));
set_attack_value(AT_NSPECIAL_GUAD, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_INHALE_hurt"));


set_window_value(AT_NSPECIAL_GUAD, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_GUAD, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_GUAD, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_GUAD, 1, AG_WINDOW_SFX, asset_get("sfx_bite"));
set_window_value(AT_NSPECIAL_GUAD, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NSPECIAL_GUAD, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_GUAD, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_GUAD, 2, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_NSPECIAL_GUAD, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_GUAD, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_GUAD, 3, AG_WINDOW_ANIM_FRAME_START, 22);

set_num_hitboxes(AT_NSPECIAL_GUAD, 2);

set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_WIDTH, 58);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_EXTRA_HITPAUSE, 1.0);
set_hitbox_value(AT_NSPECIAL_GUAD, 1, HG_HIT_SFX, asset_get("sfx_crunch"));
