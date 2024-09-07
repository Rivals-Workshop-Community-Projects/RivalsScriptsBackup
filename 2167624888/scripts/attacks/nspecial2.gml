set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("boomground"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("boomground_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("boomair"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("boomair_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_NSPECIAL_2, 1)

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECI_2AL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -34);
//set_hitbox_value(AT_NSPECI_2AL, 1, HG_WIDTH, 10);
//set_hitbox_value(AT_NSPECI_2AL, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("article"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_NSPECI_2AL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.35);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, sound_get("blue_arrow_hit_new"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, blue_big_hit_vfx);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 0.85);