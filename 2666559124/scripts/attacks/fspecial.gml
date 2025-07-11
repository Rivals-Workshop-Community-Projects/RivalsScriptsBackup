set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 2);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_collect"));

set_num_hitboxes(AT_FSPECIAL, 2);

// Capture hitbox
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);

// Debris
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 80);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("barrel_alt_pieces"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);

