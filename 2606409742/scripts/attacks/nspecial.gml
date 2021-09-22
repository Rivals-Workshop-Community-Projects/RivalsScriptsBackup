set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 4);

// charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

// end
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);

set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Normal");
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6); // 8
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sfx_botw_hit_1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("spears"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("spears_mask"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.75); // 1.0

set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Breaking Hit");
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sfx_botw_hit_1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("spears"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("spears_mask"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.75); // 1.0