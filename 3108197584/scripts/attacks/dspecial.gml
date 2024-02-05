set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);

//throw
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 27);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_GOTO, 10);

//detonate
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_drone_detonate"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_DSPECIAL, 0);

var num = 1;
set_hitbox_value(AT_DSPECIAL, num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, num, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL, num, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, num, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, num, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, num, HG_WIDTH, 100);
set_hitbox_value(AT_DSPECIAL, num, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, num, HG_DAMAGE, 12 - 11*has_rune("C"));
set_hitbox_value(AT_DSPECIAL, num, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, num, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, num, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_DSPECIAL, num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, num, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, num, HG_EXTENDED_PARRY_STUN, 1);