set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("ftilt_air"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 999999999999999999999999999);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, sound_get("sfx_sharphit_m"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("greyaxe"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 999999999999999999999999999);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, sound_get("sfx_sharphit_m"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("greyaxe"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 14);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);