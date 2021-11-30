set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -14);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 19);
