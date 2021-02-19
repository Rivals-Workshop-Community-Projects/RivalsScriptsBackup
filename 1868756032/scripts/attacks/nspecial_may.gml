set_attack_value(AT_NSPECIAL_MAY, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_MAY, AG_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_MAY, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_MAY, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_MAY, AG_AIR_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_MAY, AG_HURTBOX_SPRITE, sprite_get("AT_JAB_hurt"));

set_window_value(AT_NSPECIAL_MAY, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_MAY, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_MAY, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL_MAY, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL_MAY, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_MAY, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_MAY, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_MAY, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL_MAY, 1);

set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_WIDTH, 16);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HIT_SFX, asset_get("sfx_blow_small1"));
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_SPRITE, sprite_get("fer_seed"));
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_MASK, sprite_get("fer_seed"));
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL_MAY, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);