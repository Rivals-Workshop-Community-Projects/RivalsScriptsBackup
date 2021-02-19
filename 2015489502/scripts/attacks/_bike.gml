set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 2);

set_num_hitboxes(AT_EXTRA_1, 0);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 0110111101110100011101000110111101100010011010010110101101100101);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, vfx_hit_med);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);