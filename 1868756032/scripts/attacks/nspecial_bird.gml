set_attack_value(AT_NSPECIAL_BIRD, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_BIRD, AG_SPRITE, sprite_get("AT_NSPECIAL_WRASTOR_GROUND"));
set_attack_value(AT_NSPECIAL_BIRD, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_BIRD, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_BIRD, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_WRASTOR_AIR"));
set_attack_value(AT_NSPECIAL_BIRD, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_WRASTOR_AIR_hurt"));

set_window_value(AT_NSPECIAL_BIRD, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_BIRD, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_BIRD, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_BIRD, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_BIRD, 1, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_NSPECIAL_BIRD, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL_BIRD, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_BIRD, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_BIRD, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_BIRD, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_BIRD, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_BIRD, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_BIRD, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_BIRD, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL_BIRD, 1);

set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HITSTUN_MULTIPLIER, 0.1);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PROJECTILE_SPRITE, asset_get("bird_proj_spr"));
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PROJECTILE_MASK, asset_get("bird_proj_spr"));
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PROJECTILE_ANIM_SPEED, 0.8);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_BIRD, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);