set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("cradily_hurt_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_plant_ready"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1)
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, swallow);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 4)

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, asset_get("mfx_coin"));

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, -10);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);