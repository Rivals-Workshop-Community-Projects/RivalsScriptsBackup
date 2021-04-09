set_attack_value(AT_NSPECIAL_AIR_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_AIR_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR_2, AG_MUNO_ATTACK_NAME, "True NSpecial Air");
set_attack_value(AT_NSPECIAL_AIR_2, AG_MUNO_ATTACK_MISC, "Input: 236P");
set_attack_value(AT_NSPECIAL_AIR_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_NSPECIAL_AIR_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_SFX, sound_get("crescentheavy"));
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.9);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_NSPECIAL_AIR_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.3);


set_window_value(AT_NSPECIAL_AIR_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_AIR_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

set_window_value(AT_NSPECIAL_AIR_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL_AIR_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_AIR_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

set_num_hitboxes(AT_NSPECIAL_AIR_2, 1);

set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_projair"));
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_projair"));
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_HSPEED, 1.5);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_AIR_FRICTION, -0.1);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_GROUND_FRICTION, -0.125);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);