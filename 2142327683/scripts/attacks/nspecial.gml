set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//Taking Aim
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("clover_nspecial_start"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 25);

//The targetting circle appears
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5)
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9999);

//Shooting
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6)
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("clover_nspecial_mid"));
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7)
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 28);

set_num_hitboxes(AT_NSPECIAL, 1);

//Bullet
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 24);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, special_bullet_damage);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, gun_strong);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("bullet_proj"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20.0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.0);
