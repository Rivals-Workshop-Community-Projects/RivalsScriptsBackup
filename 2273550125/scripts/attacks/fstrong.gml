set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 24);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("dog_residue"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("dog_test"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("dog_salad"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_FSTRONG, 3);

//Hitbox 1
//Strong Hit
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, -1);

set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 0);

set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);

set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);

set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("dog_minicrit"));

set_hitbox_value(AT_FSTRONG, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.75);

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ANIM_SPEED, 0.1);

set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 305);
