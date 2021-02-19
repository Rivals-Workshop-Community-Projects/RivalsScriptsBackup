set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 2);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("laser"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 90);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -24);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITSTUN_MULTIPLIER, .1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);