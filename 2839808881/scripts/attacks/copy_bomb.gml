set_attack_value(AT_COPY_BOMB, AG_CATEGORY, 2);
set_attack_value(AT_COPY_BOMB, AG_SPRITE, sprite_get("ability_bomb"));
set_attack_value(AT_COPY_BOMB, AG_HURTBOX_SPRITE, sprite_get("ability_bomb_hurt"));
set_attack_value(AT_COPY_BOMB, AG_NUM_WINDOWS, 5);
set_attack_value(AT_COPY_BOMB, AG_OFF_LEDGE, 1);

//startup 1
set_window_value(AT_COPY_BOMB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BOMB, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_BOMB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_BOMB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_BOMB, 1, AG_WINDOW_SFX, sound_get("sfx_krdl_bomb_prep"));

//hold bomb
set_window_value(AT_COPY_BOMB, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_BOMB, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_COPY_BOMB, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_BOMB, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//startup 2
set_window_value(AT_COPY_BOMB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BOMB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_BOMB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_BOMB, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//throw bomb
set_window_value(AT_COPY_BOMB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BOMB, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_COPY_BOMB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_BOMB, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_COPY_BOMB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_BOMB, 4, AG_WINDOW_SFX, sound_get("sfx_krdl_bomb_throw"));

//endlag
set_window_value(AT_COPY_BOMB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BOMB, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_COPY_BOMB, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_COPY_BOMB, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_COPY_BOMB, 2);

set_hitbox_value(AT_COPY_BOMB, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_BOMB, 1, HG_WINDOW, 4);
set_hitbox_value(AT_COPY_BOMB, 1, HG_LIFETIME, 600);
set_hitbox_value(AT_COPY_BOMB, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_COPY_BOMB, 1, HG_HITBOX_Y, -39);
set_hitbox_value(AT_COPY_BOMB, 1, HG_WIDTH, 37);
set_hitbox_value(AT_COPY_BOMB, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_BOMB, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_COPY_BOMB, 1, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_BOMB, 1, HG_VISUAL_EFFECT, bomb_hitfx);
set_hitbox_value(AT_COPY_BOMB, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_COPY_BOMB, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_COPY_BOMB, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_BOMB, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_COPY_BOMB, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_COPY_BOMB, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_SPRITE, sprite_get("ability_bomb_proj"));
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_BOMB, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_DESTROY_EFFECT, bomb_hitfx);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_HSPEED, 7.5);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_VSPEED, -7.5);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_COPY_BOMB, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_BOMB, 1, HG_HIT_SFX, sound_get("sfx_krdl_bomb_explode"));

set_hitbox_value(AT_COPY_BOMB, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_BOMB, 2, HG_WINDOW, 9);
set_hitbox_value(AT_COPY_BOMB, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_COPY_BOMB, 2, HG_HITBOX_X, 31);
set_hitbox_value(AT_COPY_BOMB, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_COPY_BOMB, 2, HG_WIDTH, 90);
set_hitbox_value(AT_COPY_BOMB, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_BOMB, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_COPY_BOMB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_BOMB, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_COPY_BOMB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_COPY_BOMB, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_COPY_BOMB, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_COPY_BOMB, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_COPY_BOMB, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_BOMB, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_BOMB, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);