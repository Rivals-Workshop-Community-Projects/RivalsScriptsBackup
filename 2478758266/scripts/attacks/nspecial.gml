set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("pkgroundair"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("pkgroundair_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("boom"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -2);

set_num_hitboxes(AT_NSPECIAL, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 19);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 92);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 23);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 139);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 19);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("pkgroundairhurtyhurts"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("pkgroundairhurtyhurts"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);