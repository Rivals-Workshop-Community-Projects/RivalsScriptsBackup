set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("rune_search_start"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("cryonis_create"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 0);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 88);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_USTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);