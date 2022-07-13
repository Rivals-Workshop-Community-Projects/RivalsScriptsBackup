set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Window 1
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

//Window 2
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_DSPECIAL, 1);

//Bomb Projectile
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("dspecial_proj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 115);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 36);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 36);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
