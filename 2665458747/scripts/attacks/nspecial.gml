set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 3);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_spit"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);

set_num_hitboxes(AT_NSPECIAL, 3);

set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("sting"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, poison_fx);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, stinghit);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 13.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
