set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 1 * spr_dir);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_bomb"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_bomb_hurt"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, fireball_normal_explode);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1)
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1)
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, fireball_normal_explode);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sfx_krtd_bomb_explode);