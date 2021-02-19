set_attack_value(AT_NSPECIAL_ORCA, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_ORCA, AG_SPRITE, sprite_get("AT_NSPECIAL_ORCA_GROUND"));
set_attack_value(AT_NSPECIAL_ORCA, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_ORCA, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_ORCA, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_ORCA_AIR"));
set_attack_value(AT_NSPECIAL_ORCA, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_ORCA_GROUND_hurt"));

set_window_value(AT_NSPECIAL_ORCA, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORCA, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_ORCA, 1, AG_WINDOW_ANIM_FRAMES, 3);


set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_SFX, asset_get("sfx_watergun_fire"));
set_window_value(AT_NSPECIAL_ORCA, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL_ORCA, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORCA, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL_ORCA, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_NSPECIAL_ORCA, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL_ORCA, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL_ORCA, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORCA, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_ORCA, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_ORCA, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL_ORCA, 2);

set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_VISUAL_EFFECT, 5);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_SPRITE, sprite_get("AT_NSPECIAL_ORCA_PROJ"));
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_MASK, sprite_get("AT_NSPECIAL_ORCA_PROJ"));
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_ORCA, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);

set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HITBOX_Y, 8);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HITSTUN_MULTIPLIER, 0.2);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PROJECTILE_SPRITE, asset_get("dark_bubbles_spr"));
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PROJECTILE_MASK, asset_get("dark_bubbles_spr"));
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PROJECTILE_ANIM_SPEED, 0.08);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_ORCA, 2, HG_PROJECTILE_PARRY_STUN, 1);